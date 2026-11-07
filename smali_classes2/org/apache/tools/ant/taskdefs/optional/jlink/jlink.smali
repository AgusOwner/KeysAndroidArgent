.class public Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;
.super Ljava/lang/Object;
.source "jlink.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x2000

.field private static final VECTOR_INIT_SIZE:I = 0xa


# instance fields
.field private addfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field buffer:[B

.field private compression:Z

.field private mergefiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private outfile:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->outfile:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/util/Vector;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->mergefiles:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->addfiles:Ljava/util/List;

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->compression:Z

    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 59
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->buffer:[B

    return-void
.end method

.method private addDirContents(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 258
    invoke-virtual {p2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 259
    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_2

    .line 262
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 263
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 265
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 266
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v5, 0x2f

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v4, v3, p4}, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->addDirContents(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;Z)V

    goto :goto_1

    .line 268
    :cond_1
    invoke-direct {p0, p1, v4, p3, p4}, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->addFile(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;Z)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method private addFile(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 309
    :cond_0
    new-instance v0, Ljava/util/zip/ZipEntry;

    invoke-direct {p0, p2, p3}, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->getEntryName(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p3}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 312
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/zip/ZipEntry;->setSize(J)V

    if-nez p4, :cond_1

    .line 314
    invoke-direct {p0, p2}, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->calcChecksum(Ljava/io/File;)J

    move-result-wide p3

    invoke-virtual {v0, p3, p4}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    .line 316
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p2

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/nio/file/OpenOption;

    invoke-static {p2, p3}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->addToOutputStream(Ljava/util/zip/ZipOutputStream;Ljava/io/InputStream;Ljava/util/zip/ZipEntry;)V

    return-void
.end method

.method private addToOutputStream(Ljava/util/zip/ZipOutputStream;Ljava/io/InputStream;Ljava/util/zip/ZipEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 325
    :try_start_0
    invoke-virtual {p1, p3}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    :goto_0
    iget-object p3, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->buffer:[B

    invoke-virtual {p2, p3}, Ljava/io/InputStream;->read([B)I

    move-result p3

    if-lez p3, :cond_0

    .line 335
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->buffer:[B

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p3}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_0

    .line 337
    :cond_0
    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 338
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    return-void

    .line 328
    :catch_0
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method private calcChecksum(Ljava/io/File;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 394
    new-instance v0, Ljava/io/BufferedInputStream;

    .line 395
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {p1, v1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 394
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->calcChecksum(Ljava/io/InputStream;)J

    move-result-wide v0

    return-wide v0
.end method

.method private calcChecksum(Ljava/io/InputStream;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 403
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 404
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->buffer:[B

    array-length v1, v1

    .line 407
    :goto_0
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->buffer:[B

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-lez v2, :cond_0

    .line 408
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->buffer:[B

    invoke-virtual {v0, v4, v3, v2}, Ljava/util/zip/CRC32;->update([BII)V

    goto :goto_0

    .line 410
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 411
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private getEntryName(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 279
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".class"

    .line 281
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 283
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/nio/file/OpenOption;

    invoke-static {v2, v3}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :try_start_1
    invoke-static {v2}, Lorg/apache/tools/ant/taskdefs/optional/jlink/ClassNameReader;->getClassName(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 287
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x2e

    const/16 v6, 0x2f

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    .line 289
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_0
    return-object v1

    :cond_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v1

    if-eqz v2, :cond_2

    .line 283
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 293
    :catch_0
    :cond_3
    :goto_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 295
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1, p2, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "From %1$s and prefix %2$s, creating entry %2$s%3$s%n"

    .line 293
    invoke-virtual {v1, v2, p1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 296
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3

    .line 181
    array-length v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    .line 182
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "usage: jlink output input1 ... inputN"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 183
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 185
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;-><init>()V

    const/4 v1, 0x0

    .line 187
    aget-object v1, p0, v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->setOutfile(Ljava/lang/String;)V

    .line 190
    :goto_0
    array-length v1, p0

    if-ge v2, v1, :cond_1

    .line 191
    aget-object v1, p0, v2

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->addMergeFile(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 194
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->link()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 196
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private mergeZipJarContents(Ljava/util/zip/ZipOutputStream;Ljava/io/File;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 209
    :cond_0
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, p2}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 210
    :try_start_0
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object p2

    .line 211
    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 212
    invoke-interface {p2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    .line 216
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "META-INF"

    .line 217
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-gez v2, :cond_1

    .line 222
    :try_start_1
    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->processEntry(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V
    :try_end_1
    .catch Ljava/util/zip/ZipException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 239
    :try_start_2
    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 240
    :try_start_3
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->buffer:[B

    array-length v2, v2

    .line 243
    :goto_1
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->buffer:[B

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-lez v3, :cond_2

    .line 244
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->buffer:[B

    invoke-virtual {p1, v5, v4, v3}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_1

    .line 246
    :cond_2
    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_1

    .line 247
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_3

    .line 239
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p2

    :try_start_6
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw p1

    :catch_0
    move-exception v1

    .line 230
    invoke-virtual {v1}, Ljava/util/zip/ZipException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "duplicate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    .line 236
    :cond_4
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 250
    :cond_5
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    return-void

    :catchall_2
    move-exception p1

    .line 209
    :try_start_7
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p1
.end method

.method private processEntry(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)Ljava/util/zip/ZipEntry;
    .locals 6

    .line 359
    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 361
    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ".class"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 362
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    :try_start_1
    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/optional/jlink/ClassNameReader;->getClassName(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 366
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x2e

    const/16 v5, 0x2f

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    if-eqz p1, :cond_2

    .line 368
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v1

    if-eqz p1, :cond_1

    .line 362
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 372
    :catch_0
    :cond_2
    :goto_1
    new-instance p1, Ljava/util/zip/ZipEntry;

    invoke-direct {p1, v0}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 374
    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 375
    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getExtra()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/zip/ZipEntry;->setExtra([B)V

    .line 376
    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/zip/ZipEntry;->setComment(Ljava/lang/String;)V

    .line 377
    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 378
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->compression:Z

    if-eqz v0, :cond_3

    const/16 p2, 0x8

    .line 379
    invoke-virtual {p1, p2}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 382
    invoke-virtual {p1, v0}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    .line 383
    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    .line 384
    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/zip/ZipEntry;->setSize(J)V

    :goto_2
    return-object p1
.end method


# virtual methods
.method public addAddFile(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->addfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public varargs addAddFiles([Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 115
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 116
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->addAddFile(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addMergeFile(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->mergefiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public varargs addMergeFiles([Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 102
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 103
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->addMergeFile(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public link()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 141
    new-instance v0, Ljava/util/zip/ZipOutputStream;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->outfile:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    .line 142
    invoke-static {v1, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    new-array v3, v2, [Ljava/nio/file/OpenOption;

    invoke-static {v1, v3}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 144
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->compression:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    .line 145
    invoke-virtual {v0, v1}, Ljava/util/zip/ZipOutputStream;->setMethod(I)V

    const/4 v1, -0x1

    .line 146
    invoke-virtual {v0, v1}, Ljava/util/zip/ZipOutputStream;->setLevel(I)V

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/zip/ZipOutputStream;->setMethod(I)V

    .line 150
    :goto_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->mergefiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 151
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".jar"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 154
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".zip"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    .line 160
    :cond_1
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->addAddFile(Ljava/lang/String;)V

    goto :goto_1

    .line 156
    :cond_2
    :goto_2
    invoke-direct {p0, v0, v3}, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->mergeZipJarContents(Ljava/util/zip/ZipOutputStream;Ljava/io/File;)V

    goto :goto_1

    .line 163
    :cond_3
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->addfiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 164
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0x2f

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->compression:Z

    invoke-direct {p0, v0, v3, v2, v4}, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->addDirContents(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;Z)V

    goto :goto_3

    :cond_4
    const-string v2, ""

    .line 169
    iget-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->compression:Z

    invoke-direct {p0, v0, v3, v2, v4}, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->addFile(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 172
    :cond_5
    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->close()V

    return-void

    :catchall_0
    move-exception v1

    .line 141
    :try_start_1
    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v1
.end method

.method public setCompression(Z)V
    .locals 0

    .line 125
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->compression:Z

    return-void
.end method

.method public setOutfile(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 70
    :cond_0
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->outfile:Ljava/lang/String;

    return-void
.end method
