.class public Lorg/apache/tools/ant/types/resources/TarResource;
.super Lorg/apache/tools/ant/types/resources/ArchiveResource;
.source "TarResource.java"


# instance fields
.field private gid:J

.field private groupName:Ljava/lang/String;

.field private linkFlag:B

.field private linkName:Ljava/lang/String;

.field private uid:J

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;-><init>()V

    const-string v0, ""

    .line 39
    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/TarResource;->userName:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/TarResource;->groupName:Ljava/lang/String;

    const/16 v1, 0x30

    .line 43
    iput-byte v1, p0, Lorg/apache/tools/ant/types/resources/TarResource;->linkFlag:B

    .line 44
    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/TarResource;->linkName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/tools/tar/TarEntry;)V
    .locals 1

    const/4 v0, 0x1

    .line 59
    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;-><init>(Ljava/io/File;Z)V

    const-string p1, ""

    .line 39
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/TarResource;->userName:Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/TarResource;->groupName:Ljava/lang/String;

    const/16 v0, 0x30

    .line 43
    iput-byte v0, p0, Lorg/apache/tools/ant/types/resources/TarResource;->linkFlag:B

    .line 44
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/TarResource;->linkName:Ljava/lang/String;

    .line 60
    invoke-direct {p0, p2}, Lorg/apache/tools/ant/types/resources/TarResource;->setEntry(Lorg/apache/tools/tar/TarEntry;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/tar/TarEntry;)V
    .locals 1

    const/4 v0, 0x1

    .line 70
    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;-><init>(Lorg/apache/tools/ant/types/Resource;Z)V

    const-string p1, ""

    .line 39
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/TarResource;->userName:Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/TarResource;->groupName:Ljava/lang/String;

    const/16 v0, 0x30

    .line 43
    iput-byte v0, p0, Lorg/apache/tools/ant/types/resources/TarResource;->linkFlag:B

    .line 44
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/TarResource;->linkName:Ljava/lang/String;

    .line 71
    invoke-direct {p0, p2}, Lorg/apache/tools/ant/types/resources/TarResource;->setEntry(Lorg/apache/tools/tar/TarEntry;)V

    return-void
.end method

.method private setEntry(Lorg/apache/tools/tar/TarEntry;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 222
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/resources/TarResource;->setExists(Z)V

    return-void

    .line 225
    :cond_0
    invoke-virtual {p1}, Lorg/apache/tools/tar/TarEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/TarResource;->setName(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 226
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/TarResource;->setExists(Z)V

    .line 227
    invoke-virtual {p1}, Lorg/apache/tools/tar/TarEntry;->getModTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/types/resources/TarResource;->setLastModified(J)V

    .line 228
    invoke-virtual {p1}, Lorg/apache/tools/tar/TarEntry;->isDirectory()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/TarResource;->setDirectory(Z)V

    .line 229
    invoke-virtual {p1}, Lorg/apache/tools/tar/TarEntry;->getSize()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/types/resources/TarResource;->setSize(J)V

    .line 230
    invoke-virtual {p1}, Lorg/apache/tools/tar/TarEntry;->getMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/TarResource;->setMode(I)V

    .line 231
    invoke-virtual {p1}, Lorg/apache/tools/tar/TarEntry;->getUserName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/TarResource;->userName:Ljava/lang/String;

    .line 232
    invoke-virtual {p1}, Lorg/apache/tools/tar/TarEntry;->getGroupName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/TarResource;->groupName:Ljava/lang/String;

    .line 233
    invoke-virtual {p1}, Lorg/apache/tools/tar/TarEntry;->getLongUserId()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/tools/ant/types/resources/TarResource;->uid:J

    .line 234
    invoke-virtual {p1}, Lorg/apache/tools/tar/TarEntry;->getLongGroupId()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/tools/ant/types/resources/TarResource;->gid:J

    .line 235
    invoke-virtual {p1}, Lorg/apache/tools/tar/TarEntry;->getLinkName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/TarResource;->linkName:Ljava/lang/String;

    .line 236
    invoke-virtual {p1}, Lorg/apache/tools/tar/TarEntry;->getLinkFlag()B

    move-result p1

    iput-byte p1, p0, Lorg/apache/tools/ant/types/resources/TarResource;->linkFlag:B

    return-void
.end method


# virtual methods
.method protected fetchEntry()V
    .locals 4

    .line 199
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/TarResource;->getArchive()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    .line 200
    :try_start_0
    new-instance v1, Lorg/apache/tools/tar/TarInputStream;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/tar/TarInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lorg/apache/tools/tar/TarInputStream;->getNextEntry()Lorg/apache/tools/tar/TarEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 203
    invoke-virtual {v0}, Lorg/apache/tools/tar/TarEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/TarResource;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 204
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/types/resources/TarResource;->setEntry(Lorg/apache/tools/tar/TarEntry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    :try_start_2
    invoke-virtual {v1}, Lorg/apache/tools/tar/TarInputStream;->close()V

    return-void

    :cond_1
    invoke-virtual {v1}, Lorg/apache/tools/tar/TarInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v0, 0x0

    .line 212
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/types/resources/TarResource;->setEntry(Lorg/apache/tools/tar/TarEntry;)V

    return-void

    :catchall_0
    move-exception v0

    .line 200
    :try_start_3
    invoke-virtual {v1}, Lorg/apache/tools/tar/TarInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 209
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/types/resources/TarResource;->log(Ljava/lang/String;I)V

    .line 210
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getGid()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 175
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/TarResource;->getLongGid()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getGroup()Ljava/lang/String;
    .locals 1

    .line 131
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/TarResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/TarResource;->getRef()Lorg/apache/tools/ant/types/resources/TarResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/TarResource;->getGroup()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 134
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/TarResource;->checkEntry()V

    .line 135
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/TarResource;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/TarResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/TarResource;->getRef()Lorg/apache/tools/ant/types/resources/TarResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/TarResource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 85
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/TarResource;->getArchive()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    .line 86
    new-instance v1, Lorg/apache/tools/tar/TarInputStream;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/tar/TarInputStream;-><init>(Ljava/io/InputStream;)V

    .line 88
    :cond_1
    invoke-virtual {v1}, Lorg/apache/tools/tar/TarInputStream;->getNextEntry()Lorg/apache/tools/tar/TarEntry;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 89
    invoke-virtual {v0}, Lorg/apache/tools/tar/TarEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/TarResource;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 94
    :cond_2
    invoke-static {v1}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    .line 95
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no entry "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/TarResource;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 96
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/TarResource;->getArchive()Lorg/apache/tools/ant/types/Resource;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLinkFlag()B
    .locals 1

    .line 191
    iget-byte v0, p0, Lorg/apache/tools/ant/types/resources/TarResource;->linkFlag:B

    return v0
.end method

.method public getLinkName()Ljava/lang/String;
    .locals 1

    .line 183
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/TarResource;->linkName:Ljava/lang/String;

    return-object v0
.end method

.method public getLongGid()J
    .locals 2

    .line 163
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/TarResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/TarResource;->getRef()Lorg/apache/tools/ant/types/resources/TarResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/TarResource;->getLongGid()J

    move-result-wide v0

    return-wide v0

    .line 166
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/TarResource;->checkEntry()V

    .line 167
    iget-wide v0, p0, Lorg/apache/tools/ant/types/resources/TarResource;->gid:J

    return-wide v0
.end method

.method public getLongUid()J
    .locals 2

    .line 143
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/TarResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/TarResource;->getRef()Lorg/apache/tools/ant/types/resources/TarResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/TarResource;->getLongUid()J

    move-result-wide v0

    return-wide v0

    .line 146
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/TarResource;->checkEntry()V

    .line 147
    iget-wide v0, p0, Lorg/apache/tools/ant/types/resources/TarResource;->uid:J

    return-wide v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/TarResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/TarResource;->getRef()Lorg/apache/tools/ant/types/resources/TarResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/TarResource;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0

    .line 112
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use the tar task for tar output."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected bridge synthetic getRef()Lorg/apache/tools/ant/types/Resource;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/TarResource;->getRef()Lorg/apache/tools/ant/types/resources/TarResource;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getRef()Lorg/apache/tools/ant/types/resources/ArchiveResource;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/TarResource;->getRef()Lorg/apache/tools/ant/types/resources/TarResource;

    move-result-object v0

    return-object v0
.end method

.method protected getRef()Lorg/apache/tools/ant/types/resources/TarResource;
    .locals 1

    .line 217
    const-class v0, Lorg/apache/tools/ant/types/resources/TarResource;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/TarResource;->getCheckedRef(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/TarResource;

    return-object v0
.end method

.method public getUid()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 155
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/TarResource;->getLongUid()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 120
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/TarResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/TarResource;->getRef()Lorg/apache/tools/ant/types/resources/TarResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/TarResource;->getUserName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 123
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/TarResource;->checkEntry()V

    .line 124
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/TarResource;->userName:Ljava/lang/String;

    return-object v0
.end method
