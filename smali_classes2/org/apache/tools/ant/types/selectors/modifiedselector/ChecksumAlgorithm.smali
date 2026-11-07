.class public Lorg/apache/tools/ant/types/selectors/modifiedselector/ChecksumAlgorithm;
.super Ljava/lang/Object;
.source "ChecksumAlgorithm.java"

# interfaces
.implements Lorg/apache/tools/ant/types/selectors/modifiedselector/Algorithm;


# instance fields
.field private algorithm:Ljava/lang/String;

.field private checksum:Ljava/util/zip/Checksum;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CRC"

    .line 64
    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ChecksumAlgorithm;->algorithm:Ljava/lang/String;

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ChecksumAlgorithm;->checksum:Ljava/util/zip/Checksum;

    return-void
.end method


# virtual methods
.method public getValue(Ljava/io/File;)Ljava/lang/String;
    .locals 3

    .line 121
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ChecksumAlgorithm;->initChecksum()V

    .line 123
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ChecksumAlgorithm;->checksum:Ljava/util/zip/Checksum;

    invoke-interface {v0}, Ljava/util/zip/Checksum;->reset()V

    .line 125
    :try_start_0
    new-instance v0, Ljava/util/zip/CheckedInputStream;

    new-instance v1, Ljava/io/BufferedInputStream;

    .line 126
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/OpenOption;

    invoke-static {p1, v2}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object p1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ChecksumAlgorithm;->checksum:Ljava/util/zip/Checksum;

    invoke-direct {v0, v1, p1}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/util/zip/CheckedInputStream;->read()I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {v0}, Ljava/util/zip/CheckedInputStream;->getChecksum()Ljava/util/zip/Checksum;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    :try_start_2
    invoke-virtual {v0}, Ljava/util/zip/CheckedInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 125
    :try_start_3
    invoke-virtual {v0}, Ljava/util/zip/CheckedInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public initChecksum()V
    .locals 2

    .line 88
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ChecksumAlgorithm;->checksum:Ljava/util/zip/Checksum;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "CRC"

    .line 91
    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ChecksumAlgorithm;->algorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ChecksumAlgorithm;->checksum:Ljava/util/zip/Checksum;

    goto :goto_0

    :cond_1
    const-string v0, "ADLER"

    .line 93
    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ChecksumAlgorithm;->algorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ChecksumAlgorithm;->checksum:Ljava/util/zip/Checksum;

    :goto_0
    return-void

    .line 96
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    invoke-direct {v1}, Ljava/security/NoSuchAlgorithmException;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public isValid()Z
    .locals 2

    const-string v0, "CRC"

    .line 110
    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ChecksumAlgorithm;->algorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ADLER"

    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ChecksumAlgorithm;->algorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public setAlgorithm(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 82
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ChecksumAlgorithm;->algorithm:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 144
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ChecksumAlgorithm;->algorithm:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<ChecksumAlgorithm:algorithm=%s>"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
