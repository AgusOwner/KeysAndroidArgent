.class public Lorg/apache/tools/ant/types/selectors/modifiedselector/DigestAlgorithm;
.super Ljava/lang/Object;
.source "DigestAlgorithm.java"

# interfaces
.implements Lorg/apache/tools/ant/types/selectors/modifiedselector/Algorithm;


# static fields
.field private static final BUFFER_SIZE:I = 0x2000

.field private static final BYTE_MASK:I = 0xff


# instance fields
.field private algorithm:Ljava/lang/String;

.field private messageDigest:Ljava/security/MessageDigest;

.field private provider:Ljava/lang/String;

.field private readBufferSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "MD5"

    .line 72
    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/DigestAlgorithm;->algorithm:Ljava/lang/String;

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/DigestAlgorithm;->provider:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/DigestAlgorithm;->messageDigest:Ljava/security/MessageDigest;

    const/16 v0, 0x2000

    .line 87
    iput v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/DigestAlgorithm;->readBufferSize:I

    return-void
.end method


# virtual methods
.method public getValue(Ljava/io/File;)Ljava/lang/String;
    .locals 9

    .line 156
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 159
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/DigestAlgorithm;->initMessageDigest()V

    .line 160
    iget v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/DigestAlgorithm;->readBufferSize:I

    new-array v0, v0, [B

    .line 161
    iget-object v2, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/DigestAlgorithm;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->reset()V

    .line 162
    :try_start_0
    new-instance v2, Ljava/security/DigestInputStream;

    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/nio/file/OpenOption;

    invoke-static {p1, v4}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p1

    iget-object v4, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/DigestAlgorithm;->messageDigest:Ljava/security/MessageDigest;

    invoke-direct {v2, p1, v4}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_0
    :try_start_1
    iget p1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/DigestAlgorithm;->readBufferSize:I

    invoke-virtual {v2, v0, v3, p1}, Ljava/security/DigestInputStream;->read([BII)I

    move-result p1

    const/4 v4, -0x1

    if-eq p1, v4, :cond_1

    goto :goto_0

    .line 167
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/DigestAlgorithm;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    array-length v4, v0

    move v5, v3

    :goto_1
    if-ge v5, v4, :cond_2

    aget-byte v6, v0, v5

    const-string v7, "%02x"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    and-int/lit16 v6, v6, 0xff

    .line 169
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v3

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 171
    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    :try_start_2
    invoke-virtual {v2}, Ljava/security/DigestInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 162
    :try_start_3
    invoke-virtual {v2}, Ljava/security/DigestInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    return-object v1
.end method

.method public initMessageDigest()V
    .locals 2

    .line 116
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/DigestAlgorithm;->messageDigest:Ljava/security/MessageDigest;

    if-eqz v0, :cond_0

    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/DigestAlgorithm;->provider:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "null"

    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/DigestAlgorithm;->provider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 122
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/DigestAlgorithm;->algorithm:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/DigestAlgorithm;->provider:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/DigestAlgorithm;->messageDigest:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 124
    :goto_0
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 128
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/DigestAlgorithm;->algorithm:Ljava/lang/String;

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/DigestAlgorithm;->messageDigest:Ljava/security/MessageDigest;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    return-void

    :catch_2
    move-exception v0

    .line 130
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isValid()Z
    .locals 2

    const-string v0, "SHA"

    .line 145
    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/DigestAlgorithm;->algorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "MD5"

    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/DigestAlgorithm;->algorithm:Ljava/lang/String;

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

    .line 100
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/DigestAlgorithm;->algorithm:Ljava/lang/String;

    return-void
.end method

.method public setProvider(Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/DigestAlgorithm;->provider:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 183
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/DigestAlgorithm;->algorithm:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/DigestAlgorithm;->provider:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<DigestAlgorithm:algorithm=%s;provider=%s>"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
