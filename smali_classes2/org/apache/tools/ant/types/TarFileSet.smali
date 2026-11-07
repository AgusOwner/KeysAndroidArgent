.class public Lorg/apache/tools/ant/types/TarFileSet;
.super Lorg/apache/tools/ant/types/ArchiveFileSet;
.source "TarFileSet.java"


# instance fields
.field private gid:I

.field private groupIdSet:Z

.field private groupName:Ljava/lang/String;

.field private groupNameSet:Z

.field private uid:I

.field private userIdSet:Z

.field private userName:Ljava/lang/String;

.field private userNameSet:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lorg/apache/tools/ant/types/ArchiveFileSet;-><init>()V

    const-string v0, ""

    .line 39
    iput-object v0, p0, Lorg/apache/tools/ant/types/TarFileSet;->userName:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lorg/apache/tools/ant/types/TarFileSet;->groupName:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lorg/apache/tools/ant/types/FileSet;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/ArchiveFileSet;-><init>(Lorg/apache/tools/ant/types/FileSet;)V

    const-string p1, ""

    .line 39
    iput-object p1, p0, Lorg/apache/tools/ant/types/TarFileSet;->userName:Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lorg/apache/tools/ant/types/TarFileSet;->groupName:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lorg/apache/tools/ant/types/TarFileSet;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/ArchiveFileSet;-><init>(Lorg/apache/tools/ant/types/ArchiveFileSet;)V

    const-string p1, ""

    .line 39
    iput-object p1, p0, Lorg/apache/tools/ant/types/TarFileSet;->userName:Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lorg/apache/tools/ant/types/TarFileSet;->groupName:Ljava/lang/String;

    return-void
.end method

.method private checkTarFileSetAttributesAllowed()V
    .locals 2

    .line 274
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/TarFileSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/TarFileSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/TarFileSet;->getRefid()Lorg/apache/tools/ant/types/Reference;

    move-result-object v0

    .line 277
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/TarFileSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    .line 276
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Reference;->getReferencedObject(Lorg/apache/tools/ant/Project;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/tools/ant/types/TarFileSet;

    if-eqz v0, :cond_1

    .line 279
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/TarFileSet;->checkAttributesAllowed()V

    :cond_1
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 261
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/TarFileSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/TarFileSet;->getRef()Lorg/apache/tools/ant/types/AbstractFileSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/AbstractFileSet;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 264
    :cond_0
    invoke-super {p0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected configureFileSet(Lorg/apache/tools/ant/types/ArchiveFileSet;)V
    .locals 1

    .line 244
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/ArchiveFileSet;->configureFileSet(Lorg/apache/tools/ant/types/ArchiveFileSet;)V

    .line 245
    instance-of v0, p1, Lorg/apache/tools/ant/types/TarFileSet;

    if-eqz v0, :cond_0

    .line 246
    check-cast p1, Lorg/apache/tools/ant/types/TarFileSet;

    .line 247
    iget-object v0, p0, Lorg/apache/tools/ant/types/TarFileSet;->userName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/TarFileSet;->setUserName(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lorg/apache/tools/ant/types/TarFileSet;->groupName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/TarFileSet;->setGroup(Ljava/lang/String;)V

    .line 249
    iget v0, p0, Lorg/apache/tools/ant/types/TarFileSet;->uid:I

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/TarFileSet;->setUid(I)V

    .line 250
    iget v0, p0, Lorg/apache/tools/ant/types/TarFileSet;->gid:I

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/TarFileSet;->setGid(I)V

    :cond_0
    return-void
.end method

.method public getGid()I
    .locals 1

    .line 164
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/TarFileSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/TarFileSet;->getRef()Lorg/apache/tools/ant/types/AbstractFileSet;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/TarFileSet;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/TarFileSet;->getGid()I

    move-result v0

    return v0

    .line 167
    :cond_0
    iget v0, p0, Lorg/apache/tools/ant/types/TarFileSet;->gid:I

    return v0
.end method

.method public getGroup()Ljava/lang/String;
    .locals 1

    .line 136
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/TarFileSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/TarFileSet;->getRef()Lorg/apache/tools/ant/types/AbstractFileSet;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/TarFileSet;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/TarFileSet;->getGroup()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 139
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/TarFileSet;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method protected getRef()Lorg/apache/tools/ant/types/AbstractFileSet;
    .locals 1

    .line 233
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/TarFileSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/TarFileSet;->getRef(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/AbstractFileSet;

    move-result-object v0

    return-object v0
.end method

.method protected getRef(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/AbstractFileSet;
    .locals 1

    .line 212
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/TarFileSet;->dieOnCircularReference(Lorg/apache/tools/ant/Project;)V

    .line 213
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/TarFileSet;->getRefid()Lorg/apache/tools/ant/types/Reference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Reference;->getReferencedObject(Lorg/apache/tools/ant/Project;)Ljava/lang/Object;

    move-result-object p1

    .line 214
    instance-of v0, p1, Lorg/apache/tools/ant/types/TarFileSet;

    if-eqz v0, :cond_0

    .line 215
    check-cast p1, Lorg/apache/tools/ant/types/AbstractFileSet;

    return-object p1

    .line 217
    :cond_0
    instance-of v0, p1, Lorg/apache/tools/ant/types/FileSet;

    if-eqz v0, :cond_1

    .line 218
    new-instance v0, Lorg/apache/tools/ant/types/TarFileSet;

    check-cast p1, Lorg/apache/tools/ant/types/FileSet;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/types/TarFileSet;-><init>(Lorg/apache/tools/ant/types/FileSet;)V

    .line 219
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/TarFileSet;->configureFileSet(Lorg/apache/tools/ant/types/ArchiveFileSet;)V

    return-object v0

    .line 222
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/TarFileSet;->getRefid()Lorg/apache/tools/ant/types/Reference;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Reference;->getRefId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " doesn\'t denote a tarfileset or a fileset"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 223
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUid()I
    .locals 1

    .line 108
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/TarFileSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/TarFileSet;->getRef()Lorg/apache/tools/ant/types/AbstractFileSet;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/TarFileSet;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/TarFileSet;->getUid()I

    move-result v0

    return v0

    .line 111
    :cond_0
    iget v0, p0, Lorg/apache/tools/ant/types/TarFileSet;->uid:I

    return v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 80
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/TarFileSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/TarFileSet;->getRef()Lorg/apache/tools/ant/types/AbstractFileSet;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/TarFileSet;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/TarFileSet;->getUserName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 83
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/TarFileSet;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public hasGroupBeenSet()Z
    .locals 1

    .line 146
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/TarFileSet;->groupNameSet:Z

    return v0
.end method

.method public hasGroupIdBeenSet()Z
    .locals 1

    .line 174
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/TarFileSet;->groupIdSet:Z

    return v0
.end method

.method public hasUserIdBeenSet()Z
    .locals 1

    .line 118
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/TarFileSet;->userIdSet:Z

    return v0
.end method

.method public hasUserNameBeenSet()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/TarFileSet;->userNameSet:Z

    return v0
.end method

.method protected newArchiveScanner()Lorg/apache/tools/ant/types/ArchiveScanner;
    .locals 2

    .line 183
    new-instance v0, Lorg/apache/tools/ant/types/TarScanner;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/TarScanner;-><init>()V

    .line 184
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/TarFileSet;->getEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/TarScanner;->setEncoding(Ljava/lang/String;)V

    return-object v0
.end method

.method public setGid(I)V
    .locals 1

    .line 155
    invoke-direct {p0}, Lorg/apache/tools/ant/types/TarFileSet;->checkTarFileSetAttributesAllowed()V

    const/4 v0, 0x1

    .line 156
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/TarFileSet;->groupIdSet:Z

    .line 157
    iput p1, p0, Lorg/apache/tools/ant/types/TarFileSet;->gid:I

    return-void
.end method

.method public setGroup(Ljava/lang/String;)V
    .locals 1

    .line 127
    invoke-direct {p0}, Lorg/apache/tools/ant/types/TarFileSet;->checkTarFileSetAttributesAllowed()V

    const/4 v0, 0x1

    .line 128
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/TarFileSet;->groupNameSet:Z

    .line 129
    iput-object p1, p0, Lorg/apache/tools/ant/types/TarFileSet;->groupName:Ljava/lang/String;

    return-void
.end method

.method public setRefid(Lorg/apache/tools/ant/types/Reference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 198
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/TarFileSet;->userNameSet:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/tools/ant/types/TarFileSet;->userIdSet:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/tools/ant/types/TarFileSet;->groupNameSet:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/tools/ant/types/TarFileSet;->groupIdSet:Z

    if-nez v0, :cond_0

    .line 201
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/ArchiveFileSet;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    return-void

    .line 199
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/TarFileSet;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public setUid(I)V
    .locals 1

    .line 99
    invoke-direct {p0}, Lorg/apache/tools/ant/types/TarFileSet;->checkTarFileSetAttributesAllowed()V

    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/TarFileSet;->userIdSet:Z

    .line 101
    iput p1, p0, Lorg/apache/tools/ant/types/TarFileSet;->uid:I

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Lorg/apache/tools/ant/types/TarFileSet;->checkTarFileSetAttributesAllowed()V

    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/TarFileSet;->userNameSet:Z

    .line 73
    iput-object p1, p0, Lorg/apache/tools/ant/types/TarFileSet;->userName:Ljava/lang/String;

    return-void
.end method
