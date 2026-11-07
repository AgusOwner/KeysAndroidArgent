.class public Lorg/apache/tools/ant/types/resources/ZipResource;
.super Lorg/apache/tools/ant/types/resources/ArchiveResource;
.source "ZipResource.java"


# instance fields
.field private encoding:Ljava/lang/String;

.field private extras:[Lorg/apache/tools/zip/ZipExtraField;

.field private method:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Lorg/apache/tools/zip/ZipEntry;)V
    .locals 1

    const/4 v0, 0x1

    .line 59
    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;-><init>(Ljava/io/File;Z)V

    .line 60
    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/types/resources/ZipResource;->setEncoding(Ljava/lang/String;)V

    .line 61
    invoke-direct {p0, p3}, Lorg/apache/tools/ant/types/resources/ZipResource;->setEntry(Lorg/apache/tools/zip/ZipEntry;)V

    return-void
.end method

.method public static getZipEntryStream(Lorg/apache/tools/zip/ZipFile;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    invoke-virtual {p0, p1}, Lorg/apache/tools/zip/ZipFile;->getEntry(Ljava/lang/String;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    new-instance p1, Lorg/apache/tools/ant/types/resources/ZipResource$1;

    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/ZipFile;->getInputStream(Lorg/apache/tools/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lorg/apache/tools/ant/types/resources/ZipResource$1;-><init>(Ljava/io/InputStream;Lorg/apache/tools/zip/ZipFile;)V

    return-object p1

    .line 188
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipFile;->close()V

    .line 189
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no entry "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " in "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipFile;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setEntry(Lorg/apache/tools/zip/ZipEntry;)V
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 229
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/resources/ZipResource;->setExists(Z)V

    return-void

    .line 232
    :cond_0
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/ZipResource;->setName(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 233
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/ZipResource;->setExists(Z)V

    .line 234
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getTime()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/types/resources/ZipResource;->setLastModified(J)V

    .line 235
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->isDirectory()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/types/resources/ZipResource;->setDirectory(Z)V

    .line 236
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getSize()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/types/resources/ZipResource;->setSize(J)V

    .line 237
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getUnixMode()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/types/resources/ZipResource;->setMode(I)V

    .line 238
    invoke-virtual {p1, v0}, Lorg/apache/tools/zip/ZipEntry;->getExtraFields(Z)[Lorg/apache/tools/zip/ZipExtraField;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/ZipResource;->extras:[Lorg/apache/tools/zip/ZipExtraField;

    .line 239
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getMethod()I

    move-result p1

    iput p1, p0, Lorg/apache/tools/ant/types/resources/ZipResource;->method:I

    return-void
.end method


# virtual methods
.method public addConfigured(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .locals 1

    .line 87
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->addConfigured(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 88
    invoke-interface {p1}, Lorg/apache/tools/ant/types/ResourceCollection;->isFilesystemOnly()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 89
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "only filesystem resources are supported"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected fetchEntry()V
    .locals 5

    const/4 v0, 0x0

    .line 212
    :try_start_0
    new-instance v1, Lorg/apache/tools/zip/ZipFile;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ZipResource;->getZipfile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ZipResource;->getEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/tools/zip/ZipFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ZipResource;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/tools/zip/ZipFile;->getEntry(Ljava/lang/String;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/types/resources/ZipResource;->setEntry(Lorg/apache/tools/zip/ZipEntry;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 218
    invoke-static {v1}, Lorg/apache/tools/zip/ZipFile;->closeQuietly(Lorg/apache/tools/zip/ZipFile;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 215
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Lorg/apache/tools/ant/types/resources/ZipResource;->log(Ljava/lang/String;I)V

    .line 216
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    .line 218
    :goto_1
    invoke-static {v1}, Lorg/apache/tools/zip/ZipFile;->closeQuietly(Lorg/apache/tools/zip/ZipFile;)V

    .line 219
    throw v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 107
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ZipResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ZipResource;->getRef()Lorg/apache/tools/ant/types/resources/ZipResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/ZipResource;->getEncoding()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/ZipResource;->encoding:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getExtraFields()[Lorg/apache/tools/zip/ZipExtraField;
    .locals 1

    .line 157
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ZipResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ZipResource;->getRef()Lorg/apache/tools/ant/types/resources/ZipResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/ZipResource;->getExtraFields()[Lorg/apache/tools/zip/ZipExtraField;

    move-result-object v0

    return-object v0

    .line 160
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ZipResource;->checkEntry()V

    .line 161
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/ZipResource;->extras:[Lorg/apache/tools/zip/ZipExtraField;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/tools/zip/ZipExtraField;

    :cond_1
    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ZipResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ZipResource;->getRef()Lorg/apache/tools/ant/types/resources/ZipResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/ZipResource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 132
    :cond_0
    new-instance v0, Lorg/apache/tools/zip/ZipFile;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ZipResource;->getZipfile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ZipResource;->getEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/zip/ZipFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ZipResource;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/tools/ant/types/resources/ZipResource;->getZipEntryStream(Lorg/apache/tools/zip/ZipFile;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getMethod()I
    .locals 1

    .line 173
    iget v0, p0, Lorg/apache/tools/ant/types/resources/ZipResource;->method:I

    return v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ZipResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ZipResource;->getRef()Lorg/apache/tools/ant/types/resources/ZipResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/ZipResource;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0

    .line 147
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use the zip task for zip output."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected bridge synthetic getRef()Lorg/apache/tools/ant/types/Resource;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ZipResource;->getRef()Lorg/apache/tools/ant/types/resources/ZipResource;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getRef()Lorg/apache/tools/ant/types/resources/ArchiveResource;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ZipResource;->getRef()Lorg/apache/tools/ant/types/resources/ZipResource;

    move-result-object v0

    return-object v0
.end method

.method protected getRef()Lorg/apache/tools/ant/types/resources/ZipResource;
    .locals 1

    .line 224
    const-class v0, Lorg/apache/tools/ant/types/resources/ZipResource;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/ZipResource;->getCheckedRef(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/ZipResource;

    return-object v0
.end method

.method public getZipfile()Ljava/io/File;
    .locals 2

    .line 77
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ZipResource;->getArchive()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    const-class v1, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    .line 78
    invoke-interface {v0}, Lorg/apache/tools/ant/types/resources/FileProvider;->getFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    .line 98
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ZipResource;->checkAttributesAllowed()V

    .line 99
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/ZipResource;->encoding:Ljava/lang/String;

    return-void
.end method

.method public setRefid(Lorg/apache/tools/ant/types/Reference;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/ZipResource;->encoding:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 119
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    return-void

    .line 117
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ZipResource;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public setZipfile(Ljava/io/File;)V
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/resources/ZipResource;->setArchive(Ljava/io/File;)V

    return-void
.end method
