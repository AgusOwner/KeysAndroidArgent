.class public Lorg/apache/tools/ant/types/resources/FileResource;
.super Lorg/apache/tools/ant/types/Resource;
.source "FileResource.java"

# interfaces
.implements Lorg/apache/tools/ant/types/resources/Touchable;
.implements Lorg/apache/tools/ant/types/resources/FileProvider;
.implements Lorg/apache/tools/ant/types/ResourceFactory;
.implements Lorg/apache/tools/ant/types/resources/Appendable;


# static fields
.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

.field private static final NULL_FILE:I


# instance fields
.field private baseDir:Ljava/io/File;

.field private file:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/types/resources/FileResource;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    const-string v0, "null file"

    .line 42
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/types/Resource;->getMagicNumber([B)I

    move-result v0

    sput v0, Lorg/apache/tools/ant/types/resources/FileResource;->NULL_FILE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lorg/apache/tools/ant/types/Resource;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lorg/apache/tools/ant/types/Resource;-><init>()V

    .line 68
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/resources/FileResource;->setFile(Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Lorg/apache/tools/ant/types/Resource;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/FileResource;->baseDir:Ljava/io/File;

    .line 60
    sget-object v0, Lorg/apache/tools/ant/types/resources/FileResource;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/util/FileUtils;->resolveFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/FileResource;->file:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/Project;Ljava/io/File;)V
    .locals 0

    .line 78
    invoke-direct {p0, p2}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Ljava/io/File;)V

    .line 79
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/resources/FileResource;->setProject(Lorg/apache/tools/ant/Project;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/Project;Ljava/lang/String;)V
    .locals 0

    .line 89
    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/Project;->resolveFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Lorg/apache/tools/ant/Project;Ljava/io/File;)V

    return-void
.end method

.method private getOutputStream(Z)Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FileResource;->getNotNullFile()Ljava/io/File;

    move-result-object v0

    .line 257
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    .line 260
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 263
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 264
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 265
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 268
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/tools/ant/util/FileUtils;->newOutputStream(Ljava/nio/file/Path;Z)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 37
    check-cast p1, Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/resources/FileResource;->compareTo(Lorg/apache/tools/ant/types/Resource;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/apache/tools/ant/types/Resource;)I
    .locals 2

    .line 279
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FileResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FileResource;->getRef()Lorg/apache/tools/ant/types/resources/FileResource;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/resources/FileResource;->compareTo(Lorg/apache/tools/ant/types/Resource;)I

    move-result p1

    return p1

    .line 282
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/resources/FileResource;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 285
    :cond_1
    const-class v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    if-eqz v0, :cond_5

    .line 287
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FileResource;->getFile()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 p1, -0x1

    return p1

    .line 291
    :cond_2
    invoke-interface {v0}, Lorg/apache/tools/ant/types/resources/FileProvider;->getFile()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 p1, 0x1

    return p1

    .line 295
    :cond_3
    invoke-virtual {v1, v0}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 297
    :cond_4
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FileResource;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    .line 299
    :cond_5
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/Resource;->compareTo(Lorg/apache/tools/ant/types/Resource;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 312
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FileResource;->isReference()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 313
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FileResource;->getRef()Lorg/apache/tools/ant/types/resources/FileResource;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/resources/FileResource;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 315
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 318
    :cond_2
    check-cast p1, Lorg/apache/tools/ant/types/resources/FileResource;

    .line 319
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FileResource;->getFile()Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_3

    .line 320
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/resources/FileResource;->getFile()Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_0

    .line 321
    :cond_3
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FileResource;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/resources/FileResource;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FileResource;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/resources/FileResource;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public getAppendOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FileResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FileResource;->getRef()Lorg/apache/tools/ant/types/resources/FileResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/FileResource;->getAppendOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    .line 252
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/types/resources/FileResource;->getOutputStream(Z)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getBaseDir()Ljava/io/File;
    .locals 1

    .line 141
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FileResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FileResource;->getRef()Lorg/apache/tools/ant/types/resources/FileResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/FileResource;->getBaseDir()Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 144
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FileResource;->dieOnCircularReference()V

    .line 145
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/FileResource;->baseDir:Ljava/io/File;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 3

    .line 110
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FileResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FileResource;->getRef()Lorg/apache/tools/ant/types/resources/FileResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/FileResource;->getFile()Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 113
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FileResource;->dieOnCircularReference()V

    .line 114
    monitor-enter p0

    .line 115
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/FileResource;->file:Ljava/io/File;

    if-nez v0, :cond_1

    .line 117
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FileResource;->getBaseDir()Ljava/io/File;

    move-result-object v0

    .line 118
    invoke-super {p0}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 120
    sget-object v2, Lorg/apache/tools/ant/types/resources/FileResource;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v2, v0, v1}, Lorg/apache/tools/ant/util/FileUtils;->resolveFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/FileResource;->setFile(Ljava/io/File;)V

    .line 123
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/FileResource;->file:Ljava/io/File;

    return-object v0

    :catchall_0
    move-exception v0

    .line 123
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FileResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FileResource;->getRef()Lorg/apache/tools/ant/types/resources/FileResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/FileResource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    .line 225
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FileResource;->getNotNullFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getLastModified()J
    .locals 2

    .line 192
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FileResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FileResource;->getRef()Lorg/apache/tools/ant/types/resources/FileResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/FileResource;->getLastModified()J

    move-result-wide v0

    goto :goto_0

    .line 194
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FileResource;->getNotNullFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .line 168
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FileResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FileResource;->getRef()Lorg/apache/tools/ant/types/resources/FileResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/FileResource;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 171
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FileResource;->getBaseDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    .line 172
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FileResource;->getNotNullFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 173
    :cond_1
    sget-object v1, Lorg/apache/tools/ant/types/resources/FileResource;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FileResource;->getNotNullFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/tools/ant/util/FileUtils;->removeLeadingPath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected getNotNullFile()Ljava/io/File;
    .locals 2

    .line 386
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FileResource;->getFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FileResource;->dieOnCircularReference()V

    .line 390
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FileResource;->getFile()Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 387
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "file attribute is null!"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FileResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FileResource;->getRef()Lorg/apache/tools/ant/types/resources/FileResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/FileResource;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 241
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/types/resources/FileResource;->getOutputStream(Z)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getRef()Lorg/apache/tools/ant/types/Resource;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FileResource;->getRef()Lorg/apache/tools/ant/types/resources/FileResource;

    move-result-object v0

    return-object v0
.end method

.method protected getRef()Lorg/apache/tools/ant/types/resources/FileResource;
    .locals 1

    .line 413
    const-class v0, Lorg/apache/tools/ant/types/resources/FileResource;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/FileResource;->getCheckedRef(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/FileResource;

    return-object v0
.end method

.method public getResource(Ljava/lang/String;)Lorg/apache/tools/ant/types/Resource;
    .locals 3

    .line 403
    sget-object v0, Lorg/apache/tools/ant/types/resources/FileResource;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FileResource;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/apache/tools/ant/util/FileUtils;->resolveFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 404
    new-instance v1, Lorg/apache/tools/ant/types/resources/FileResource;

    invoke-direct {v1, p1}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Ljava/io/File;)V

    .line 405
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FileResource;->getBaseDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lorg/apache/tools/ant/util/FileUtils;->isLeadingPath(Ljava/io/File;Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 406
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FileResource;->getBaseDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/apache/tools/ant/types/resources/FileResource;->setBaseDir(Ljava/io/File;)V

    :cond_0
    return-object v1
.end method

.method public getSize()J
    .locals 2

    .line 213
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FileResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FileResource;->getRef()Lorg/apache/tools/ant/types/resources/FileResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/FileResource;->getSize()J

    move-result-wide v0

    goto :goto_0

    .line 214
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FileResource;->getNotNullFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    .line 330
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FileResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FileResource;->getRef()Lorg/apache/tools/ant/types/resources/FileResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/FileResource;->hashCode()I

    move-result v0

    return v0

    .line 333
    :cond_0
    sget v0, Lorg/apache/tools/ant/types/resources/FileResource;->MAGIC:I

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FileResource;->getFile()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    sget v1, Lorg/apache/tools/ant/types/resources/FileResource;->NULL_FILE:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FileResource;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->hashCode()I

    move-result v1

    :goto_0
    mul-int/2addr v0, v1

    return v0
.end method

.method public isDirectory()Z
    .locals 1

    .line 203
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FileResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FileResource;->getRef()Lorg/apache/tools/ant/types/resources/FileResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/FileResource;->isDirectory()Z

    move-result v0

    goto :goto_0

    .line 204
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FileResource;->getNotNullFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public isExists()Z
    .locals 1

    .line 182
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FileResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FileResource;->getRef()Lorg/apache/tools/ant/types/resources/FileResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/FileResource;->isExists()Z

    move-result v0

    goto :goto_0

    .line 183
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FileResource;->getNotNullFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public isFilesystemOnly()Z
    .locals 1

    .line 358
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FileResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FileResource;->getRef()Lorg/apache/tools/ant/types/resources/FileResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/FileResource;->isFilesystemOnly()Z

    move-result v0

    return v0

    .line 361
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FileResource;->dieOnCircularReference()V

    const/4 v0, 0x1

    return v0
.end method

.method public setBaseDir(Ljava/io/File;)V
    .locals 0

    .line 132
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FileResource;->checkAttributesAllowed()V

    .line 133
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/FileResource;->baseDir:Ljava/io/File;

    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .locals 2

    .line 97
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FileResource;->checkAttributesAllowed()V

    .line 98
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/FileResource;->file:Ljava/io/File;

    if-eqz p1, :cond_1

    .line 99
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FileResource;->getBaseDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/tools/ant/types/resources/FileResource;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FileResource;->getBaseDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/apache/tools/ant/util/FileUtils;->isLeadingPath(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/resources/FileResource;->setBaseDir(Ljava/io/File;)V

    :cond_1
    return-void
.end method

.method public setRefid(Lorg/apache/tools/ant/types/Reference;)V
    .locals 1

    .line 154
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/FileResource;->file:Ljava/io/File;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/FileResource;->baseDir:Ljava/io/File;

    if-nez v0, :cond_0

    .line 157
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/Resource;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    return-void

    .line 155
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FileResource;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 342
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FileResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FileResource;->getRef()Lorg/apache/tools/ant/types/resources/FileResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/FileResource;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 345
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/FileResource;->file:Ljava/io/File;

    if-nez v0, :cond_1

    const-string v0, "(unbound file resource)"

    return-object v0

    .line 348
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 349
    sget-object v1, Lorg/apache/tools/ant/types/resources/FileResource;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/util/FileUtils;->normalize(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public touch(J)V
    .locals 1

    .line 371
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FileResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FileResource;->getRef()Lorg/apache/tools/ant/types/resources/FileResource;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/types/resources/FileResource;->touch(J)V

    return-void

    .line 375
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FileResource;->getNotNullFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/io/File;->setLastModified(J)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "Failed to change file modification time"

    const/4 p2, 0x1

    .line 376
    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/types/resources/FileResource;->log(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method
