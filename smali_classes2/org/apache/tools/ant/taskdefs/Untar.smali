.class public Lorg/apache/tools/ant/taskdefs/Untar;
.super Lorg/apache/tools/ant/taskdefs/Expand;
.source "Untar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/Untar$UntarCompressionMethod;
    }
.end annotation


# instance fields
.field private compression:Lorg/apache/tools/ant/taskdefs/Untar$UntarCompressionMethod;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Expand;-><init>(Ljava/lang/String;)V

    .line 59
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Untar$UntarCompressionMethod;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/Untar$UntarCompressionMethod;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Untar;->compression:Lorg/apache/tools/ant/taskdefs/Untar$UntarCompressionMethod;

    return-void
.end method

.method private expandStream(Ljava/lang/String;Ljava/io/InputStream;Ljava/io/File;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Expanding: "

    .line 145
    new-instance v10, Lorg/apache/tools/tar/TarInputStream;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Untar;->compression:Lorg/apache/tools/ant/taskdefs/Untar$UntarCompressionMethod;

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 146
    invoke-virtual {v1, p1, v2}, Lorg/apache/tools/ant/taskdefs/Untar$UntarCompressionMethod;->decompress(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p2

    .line 147
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Untar;->getEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, p2, v1}, Lorg/apache/tools/tar/TarInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 148
    :try_start_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " into "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x2

    invoke-virtual {p0, p2, v0}, Lorg/apache/tools/ant/taskdefs/Untar;->log(Ljava/lang/String;I)V

    .line 150
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Untar;->getMapper()Lorg/apache/tools/ant/util/FileNameMapper;

    move-result-object p2

    const/4 v0, 0x1

    .line 152
    :goto_0
    invoke-virtual {v10}, Lorg/apache/tools/tar/TarInputStream;->getNextEntry()Lorg/apache/tools/tar/TarEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 154
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v2

    const/4 v3, 0x0

    .line 155
    invoke-virtual {v1}, Lorg/apache/tools/tar/TarEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lorg/apache/tools/tar/TarEntry;->getModTime()Ljava/util/Date;

    move-result-object v7

    .line 156
    invoke-virtual {v1}, Lorg/apache/tools/tar/TarEntry;->isDirectory()Z

    move-result v8

    move-object v1, p0

    move-object v4, p3

    move-object v5, v10

    move-object v9, p2

    .line 154
    invoke-virtual/range {v1 .. v9}, Lorg/apache/tools/ant/taskdefs/Untar;->extractFile(Lorg/apache/tools/ant/util/FileUtils;Ljava/io/File;Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Date;ZLorg/apache/tools/ant/util/FileNameMapper;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_2

    .line 158
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Untar;->getFailOnEmptyArchive()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    .line 159
    :cond_1
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    const-string p3, "archive \'%s\' is empty"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2

    :cond_2
    :goto_1
    const-string p1, "expand complete"

    const/4 p2, 0x3

    .line 161
    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/Untar;->log(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    invoke-virtual {v10}, Lorg/apache/tools/tar/TarInputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    .line 145
    :try_start_1
    invoke-virtual {v10}, Lorg/apache/tools/tar/TarInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
.end method


# virtual methods
.method protected expandFile(Lorg/apache/tools/ant/util/FileUtils;Ljava/io/File;Ljava/io/File;)V
    .locals 2

    .line 101
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 107
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    invoke-static {p1, v0}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :try_start_1
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p3}, Lorg/apache/tools/ant/taskdefs/Untar;->expandStream(Ljava/lang/String;Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 109
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return-void

    :catchall_0
    move-exception p3

    if-eqz p1, :cond_1

    .line 107
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p3, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 110
    new-instance p3, Lorg/apache/tools/ant/BuildException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error while expanding "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 111
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 112
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Untar;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v0

    invoke-direct {p3, p2, p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw p3

    .line 102
    :cond_2
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Unable to untar "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " as the file does not exist"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 105
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Untar;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw p1
.end method

.method protected expandResource(Lorg/apache/tools/ant/types/Resource;Ljava/io/File;)V
    .locals 3

    .line 125
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->isExists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :try_start_1
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0, p2}, Lorg/apache/tools/ant/taskdefs/Untar;->expandStream(Ljava/lang/String;Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 134
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return-void

    :catchall_0
    move-exception p2

    if-eqz v0, :cond_1

    .line 132
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p2

    .line 135
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error while expanding "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 136
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Untar;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 126
    :cond_2
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to untar "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " as the it does not exist"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 129
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Untar;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw p2
.end method

.method public setCompression(Lorg/apache/tools/ant/taskdefs/Untar$UntarCompressionMethod;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Untar;->compression:Lorg/apache/tools/ant/taskdefs/Untar$UntarCompressionMethod;

    return-void
.end method

.method public setScanForUnicodeExtraFields(Z)V
    .locals 2

    .line 89
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Untar;->getTaskName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " task doesn\'t support the encoding attribute"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Untar;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw p1
.end method
