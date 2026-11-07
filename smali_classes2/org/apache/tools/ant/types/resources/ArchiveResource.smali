.class public abstract Lorg/apache/tools/ant/types/resources/ArchiveResource;
.super Lorg/apache/tools/ant/types/Resource;
.source "ArchiveResource.java"


# static fields
.field private static final NULL_ARCHIVE:I


# instance fields
.field private archive:Lorg/apache/tools/ant/types/Resource;

.field private haveEntry:Z

.field private mode:I

.field private modeSet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "null archive"

    .line 35
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/types/Resource;->getMagicNumber([B)I

    move-result v0

    sput v0, Lorg/apache/tools/ant/types/resources/ArchiveResource;->NULL_ARCHIVE:I

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lorg/apache/tools/ant/types/Resource;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/resources/ArchiveResource;->haveEntry:Z

    .line 39
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/resources/ArchiveResource;->modeSet:Z

    .line 40
    iput v0, p0, Lorg/apache/tools/ant/types/resources/ArchiveResource;->mode:I

    return-void
.end method

.method protected constructor <init>(Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;-><init>(Ljava/io/File;Z)V

    return-void
.end method

.method protected constructor <init>(Ljava/io/File;Z)V
    .locals 1

    .line 63
    invoke-direct {p0}, Lorg/apache/tools/ant/types/Resource;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/resources/ArchiveResource;->haveEntry:Z

    .line 39
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/resources/ArchiveResource;->modeSet:Z

    .line 40
    iput v0, p0, Lorg/apache/tools/ant/types/resources/ArchiveResource;->mode:I

    .line 64
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->setArchive(Ljava/io/File;)V

    .line 65
    iput-boolean p2, p0, Lorg/apache/tools/ant/types/resources/ArchiveResource;->haveEntry:Z

    return-void
.end method

.method protected constructor <init>(Lorg/apache/tools/ant/types/Resource;Z)V
    .locals 1

    .line 74
    invoke-direct {p0}, Lorg/apache/tools/ant/types/Resource;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/resources/ArchiveResource;->haveEntry:Z

    .line 39
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/resources/ArchiveResource;->modeSet:Z

    .line 40
    iput v0, p0, Lorg/apache/tools/ant/types/resources/ArchiveResource;->mode:I

    .line 75
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->addConfigured(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 76
    iput-boolean p2, p0, Lorg/apache/tools/ant/types/resources/ArchiveResource;->haveEntry:Z

    return-void
.end method


# virtual methods
.method public addConfigured(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .locals 2

    .line 104
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->checkChildrenAllowed()V

    .line 105
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/ArchiveResource;->archive:Lorg/apache/tools/ant/types/Resource;

    if-nez v0, :cond_1

    .line 109
    invoke-interface {p1}, Lorg/apache/tools/ant/types/ResourceCollection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 113
    invoke-interface {p1}, Lorg/apache/tools/ant/types/ResourceCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/tools/ant/types/Resource;

    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/ArchiveResource;->archive:Lorg/apache/tools/ant/types/Resource;

    return-void

    .line 110
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "only single argument resource collections are supported as archives"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 106
    :cond_1
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "you must not specify more than one archive"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final declared-synchronized checkEntry()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    monitor-enter p0

    .line 258
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->dieOnCircularReference()V

    .line 259
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/resources/ArchiveResource;->haveEntry:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 260
    monitor-exit p0

    return-void

    .line 262
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 266
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->getArchive()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 270
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->isExists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 273
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 276
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->fetchEntry()V

    const/4 v0, 0x1

    .line 277
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/resources/ArchiveResource;->haveEntry:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 278
    monitor-exit p0

    return-void

    .line 274
    :cond_1
    :try_start_2
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "%s denotes a directory."

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 271
    :cond_2
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "%s does not exist."

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 268
    :cond_3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "archive attribute not set"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_4
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "entry name not set"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 33
    check-cast p1, Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->compareTo(Lorg/apache/tools/ant/types/Resource;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/apache/tools/ant/types/Resource;)I
    .locals 1

    .line 208
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/Resource;->compareTo(Lorg/apache/tools/ant/types/Resource;)I

    move-result p1

    :goto_0
    return p1
.end method

.method protected declared-synchronized dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/apache/tools/ant/Project;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 290
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->isChecked()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 291
    monitor-exit p0

    return-void

    .line 293
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    invoke-super {p0, p1, p2}, Lorg/apache/tools/ant/types/Resource;->dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    goto :goto_0

    .line 296
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/ArchiveResource;->archive:Lorg/apache/tools/ant/types/Resource;

    if-eqz v0, :cond_2

    .line 297
    invoke-static {v0, p1, p2}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->pushAndInvokeCircularReferenceCheck(Lorg/apache/tools/ant/types/DataType;Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    :cond_2
    const/4 p1, 0x1

    .line 299
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->setChecked(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 301
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 222
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->isReference()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 223
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->getRef()Lorg/apache/tools/ant/types/resources/ArchiveResource;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 225
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 228
    :cond_2
    check-cast p1, Lorg/apache/tools/ant/types/resources/ArchiveResource;

    .line 229
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->getArchive()Lorg/apache/tools/ant/types/Resource;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->getArchive()Lorg/apache/tools/ant/types/Resource;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Resource;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 230
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method protected abstract fetchEntry()V
.end method

.method public getArchive()Lorg/apache/tools/ant/types/Resource;
    .locals 1

    .line 121
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->getRef()Lorg/apache/tools/ant/types/resources/ArchiveResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->getArchive()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/ArchiveResource;->archive:Lorg/apache/tools/ant/types/Resource;

    :goto_0
    return-object v0
.end method

.method public getLastModified()J
    .locals 2

    .line 130
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->getRef()Lorg/apache/tools/ant/types/resources/ArchiveResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->getLastModified()J

    move-result-wide v0

    return-wide v0

    .line 133
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->checkEntry()V

    .line 134
    invoke-super {p0}, Lorg/apache/tools/ant/types/Resource;->getLastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMode()I
    .locals 1

    .line 181
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->getRef()Lorg/apache/tools/ant/types/resources/ArchiveResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->getMode()I

    move-result v0

    return v0

    .line 184
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->checkEntry()V

    .line 185
    iget v0, p0, Lorg/apache/tools/ant/types/resources/ArchiveResource;->mode:I

    return v0
.end method

.method protected bridge synthetic getRef()Lorg/apache/tools/ant/types/Resource;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->getRef()Lorg/apache/tools/ant/types/resources/ArchiveResource;

    move-result-object v0

    return-object v0
.end method

.method protected getRef()Lorg/apache/tools/ant/types/resources/ArchiveResource;
    .locals 1

    .line 305
    const-class v0, Lorg/apache/tools/ant/types/resources/ArchiveResource;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->getCheckedRef(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/ArchiveResource;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 143
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->getRef()Lorg/apache/tools/ant/types/resources/ArchiveResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->getSize()J

    move-result-wide v0

    return-wide v0

    .line 146
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->checkEntry()V

    .line 147
    invoke-super {p0}, Lorg/apache/tools/ant/types/Resource;->getSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    .line 239
    invoke-super {p0}, Lorg/apache/tools/ant/types/Resource;->hashCode()I

    move-result v0

    .line 240
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->getArchive()Lorg/apache/tools/ant/types/Resource;

    move-result-object v1

    if-nez v1, :cond_0

    sget v1, Lorg/apache/tools/ant/types/resources/ArchiveResource;->NULL_ARCHIVE:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->getArchive()Lorg/apache/tools/ant/types/Resource;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Resource;->hashCode()I

    move-result v1

    :goto_0
    mul-int/2addr v0, v1

    return v0
.end method

.method public isDirectory()Z
    .locals 1

    .line 156
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->getRef()Lorg/apache/tools/ant/types/resources/ArchiveResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->isDirectory()Z

    move-result v0

    return v0

    .line 159
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->checkEntry()V

    .line 160
    invoke-super {p0}, Lorg/apache/tools/ant/types/Resource;->isDirectory()Z

    move-result v0

    return v0
.end method

.method public isExists()Z
    .locals 1

    .line 169
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->getRef()Lorg/apache/tools/ant/types/resources/ArchiveResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->isExists()Z

    move-result v0

    return v0

    .line 172
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->checkEntry()V

    .line 173
    invoke-super {p0}, Lorg/apache/tools/ant/types/Resource;->isExists()Z

    move-result v0

    return v0
.end method

.method public setArchive(Ljava/io/File;)V
    .locals 1

    .line 84
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->checkAttributesAllowed()V

    .line 85
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResource;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/ArchiveResource;->archive:Lorg/apache/tools/ant/types/Resource;

    return-void
.end method

.method public setMode(I)V
    .locals 0

    .line 93
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->checkAttributesAllowed()V

    .line 94
    iput p1, p0, Lorg/apache/tools/ant/types/resources/ArchiveResource;->mode:I

    const/4 p1, 0x1

    .line 95
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/resources/ArchiveResource;->modeSet:Z

    return-void
.end method

.method public setRefid(Lorg/apache/tools/ant/types/Reference;)V
    .locals 1

    .line 194
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/ArchiveResource;->archive:Lorg/apache/tools/ant/types/Resource;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/tools/ant/types/resources/ArchiveResource;->modeSet:Z

    if-nez v0, :cond_0

    .line 197
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/Resource;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    return-void

    .line 195
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 249
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->getRef()Lorg/apache/tools/ant/types/resources/ArchiveResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 250
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->getArchive()Lorg/apache/tools/ant/types/Resource;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Resource;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
