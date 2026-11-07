.class public Lorg/apache/tools/ant/taskdefs/BUnzip2;
.super Lorg/apache/tools/ant/taskdefs/Unpack;
.source "BUnzip2.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x2000

.field private static final DEFAULT_EXTENSION:Ljava/lang/String; = ".bz2"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Unpack;-><init>()V

    return-void
.end method


# virtual methods
.method protected extract()V
    .locals 9

    .line 60
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/BUnzip2;->srcResource:Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->getLastModified()J

    move-result-wide v0

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/BUnzip2;->dest:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expanding "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/BUnzip2;->srcResource:Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/BUnzip2;->dest:Ljava/io/File;

    .line 62
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/BUnzip2;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 69
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/BUnzip2;->dest:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/nio/file/OpenOption;

    invoke-static {v1, v3}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 70
    :try_start_1
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/BUnzip2;->srcResource:Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 71
    :try_start_2
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 72
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->read()I

    move-result v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/16 v6, 0x42

    const-string v7, "Invalid bz2 file."

    if-ne v5, v6, :cond_2

    .line 76
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->read()I

    move-result v5

    const/16 v6, 0x5a

    if-ne v5, v6, :cond_1

    .line 80
    new-instance v5, Lorg/apache/tools/bzip2/CBZip2InputStream;

    const/4 v6, 0x1

    invoke-direct {v5, v4, v6}, Lorg/apache/tools/bzip2/CBZip2InputStream;-><init>(Ljava/io/InputStream;Z)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/16 v0, 0x2000

    :try_start_5
    new-array v6, v0, [B

    move v7, v2

    .line 84
    :cond_0
    invoke-virtual {v1, v6, v2, v7}, Ljava/io/OutputStream;->write([BII)V

    .line 85
    invoke-virtual {v5, v6, v2, v0}, Lorg/apache/tools/bzip2/CBZip2InputStream;->read([BII)I

    move-result v7
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    .line 91
    invoke-static {v4}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    .line 92
    invoke-static {v3}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    .line 93
    invoke-static {v1}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 94
    invoke-static {v5}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    goto/16 :goto_6

    :catch_0
    move-exception v0

    goto :goto_4

    .line 78
    :cond_1
    :try_start_6
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/BUnzip2;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v5

    invoke-direct {v2, v7, v5}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v2

    .line 74
    :cond_2
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/BUnzip2;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v5

    invoke-direct {v2, v7, v5}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v2

    move-object v5, v0

    goto :goto_1

    :catch_1
    move-exception v2

    move-object v5, v0

    goto :goto_3

    :catchall_1
    move-exception v2

    move-object v4, v0

    goto :goto_0

    :catch_2
    move-exception v2

    move-object v4, v0

    goto :goto_2

    :catchall_2
    move-exception v2

    move-object v3, v0

    move-object v4, v3

    :goto_0
    move-object v5, v4

    :goto_1
    move-object v0, v2

    goto :goto_5

    :catch_3
    move-exception v2

    move-object v3, v0

    move-object v4, v3

    :goto_2
    move-object v5, v4

    :goto_3
    move-object v0, v2

    goto :goto_4

    :catchall_3
    move-exception v1

    move-object v3, v0

    move-object v4, v3

    move-object v5, v4

    move-object v0, v1

    move-object v1, v5

    goto :goto_5

    :catch_4
    move-exception v1

    move-object v3, v0

    move-object v4, v3

    move-object v5, v4

    move-object v0, v1

    move-object v1, v5

    .line 88
    :goto_4
    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Problem expanding bzip2 "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 89
    new-instance v6, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/BUnzip2;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v7

    invoke-direct {v6, v2, v0, v7}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    move-exception v0

    .line 91
    :goto_5
    invoke-static {v4}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    .line 92
    invoke-static {v3}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    .line 93
    invoke-static {v1}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 94
    invoke-static {v5}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    .line 95
    throw v0

    :cond_3
    :goto_6
    return-void
.end method

.method protected getDefaultExtension()Ljava/lang/String;
    .locals 1

    const-string v0, ".bz2"

    return-object v0
.end method

.method protected supportsNonFileResources()Z
    .locals 2

    .line 111
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/apache/tools/ant/taskdefs/BUnzip2;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
