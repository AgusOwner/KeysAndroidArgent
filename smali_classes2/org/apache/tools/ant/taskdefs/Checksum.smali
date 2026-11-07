.class public Lorg/apache/tools/ant/taskdefs/Checksum;
.super Lorg/apache/tools/ant/taskdefs/MatchingTask;
.source "Checksum.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/condition/Condition;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/Checksum$FileUnion;,
        Lorg/apache/tools/ant/taskdefs/Checksum$FormatElement;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x2000

.field private static final BYTE_MASK:I = 0xff

.field private static final NIBBLE:I = 0x4

.field private static final WORD:I = 0x10


# instance fields
.field private algorithm:Ljava/lang/String;

.field private allDigests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/io/File;",
            "[B>;"
        }
    .end annotation
.end field

.field private file:Ljava/io/File;

.field private fileext:Ljava/lang/String;

.field private forceOverwrite:Z

.field private format:Ljava/text/MessageFormat;

.field private includeFileMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/io/File;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private isCondition:Z

.field private messageDigest:Ljava/security/MessageDigest;

.field private property:Ljava/lang/String;

.field private provider:Ljava/lang/String;

.field private readBufferSize:I

.field private relativeFilePaths:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private resources:Lorg/apache/tools/ant/taskdefs/Checksum$FileUnion;

.field private todir:Ljava/io/File;

.field private totalproperty:Ljava/lang/String;

.field private verifyProperty:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$nmdcjOks-KmmPOjXf_A76_ewm14(Lorg/apache/tools/ant/taskdefs/Checksum;Ljava/io/File;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/Checksum;->getRelativeFilePath(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 59
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/MatchingTask;-><init>()V

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->file:Ljava/io/File;

    const-string v1, "MD5"

    .line 94
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->algorithm:Ljava/lang/String;

    .line 98
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->provider:Ljava/lang/String;

    .line 113
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->allDigests:Ljava/util/Map;

    .line 120
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->relativeFilePaths:Ljava/util/Map;

    .line 137
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->resources:Lorg/apache/tools/ant/taskdefs/Checksum$FileUnion;

    .line 141
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->includeFileMap:Ljava/util/Hashtable;

    const/16 v0, 0x2000

    .line 153
    iput v0, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->readBufferSize:I

    .line 158
    invoke-static {}, Lorg/apache/tools/ant/taskdefs/Checksum$FormatElement;->getDefault()Lorg/apache/tools/ant/taskdefs/Checksum$FormatElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Checksum$FormatElement;->getFormat()Ljava/text/MessageFormat;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->format:Ljava/text/MessageFormat;

    return-void
.end method

.method private addToIncludeFileMap(Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 423
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 424
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->property:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 425
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/Checksum;->getChecksumFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 426
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->forceOverwrite:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->isCondition:Z

    if-nez v1, :cond_1

    .line 427
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    goto :goto_0

    .line 430
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " omitted as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is up to date."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Checksum;->log(Ljava/lang/String;I)V

    .line 432
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->totalproperty:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 434
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Checksum;->readChecksum(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 435
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Checksum;->decodeHex([C)[B

    move-result-object v0

    .line 436
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->allDigests:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 428
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->includeFileMap:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 440
    :cond_2
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->includeFileMap:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    return-void

    .line 443
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not find file "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 444
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " to generate checksum for."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 446
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Checksum;->log(Ljava/lang/String;)V

    .line 447
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Checksum;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method private createDigestString([B)Ljava/lang/String;
    .locals 5

    .line 577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 578
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    .line 579
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%02x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 581
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static decodeHex([C)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 597
    array-length v0, p0

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_1

    shr-int/lit8 v1, v0, 0x1

    .line 603
    new-array v1, v1, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_0

    add-int/lit8 v4, v2, 0x1

    .line 607
    aget-char v2, p0, v2

    const/16 v5, 0x10

    invoke-static {v2, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    shl-int/lit8 v2, v2, 0x4

    add-int/lit8 v6, v4, 0x1

    .line 608
    aget-char v4, p0, v4

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    or-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    .line 609
    aput-byte v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    move v2, v6

    goto :goto_0

    :cond_0
    return-object v1

    .line 600
    :cond_1
    new-instance p0, Lorg/apache/tools/ant/BuildException;

    const-string v0, "odd number of characters."

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private generateChecksums()Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 474
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->readBufferSize:I

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 476
    :try_start_0
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->includeFileMap:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x1

    :goto_0
    move v4, v3

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 477
    iget-object v7, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v7}, Ljava/security/MessageDigest;->reset()V

    .line 478
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    .line 479
    iget-boolean v8, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->isCondition:Z

    const/4 v9, 0x3

    if-nez v8, :cond_1

    .line 480
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Calculating "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->algorithm:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " checksum for "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, v9}, Lorg/apache/tools/ant/taskdefs/Checksum;->log(Ljava/lang/String;I)V

    .line 482
    :cond_1
    invoke-virtual {v7}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v8

    new-array v10, v6, [Ljava/nio/file/OpenOption;

    invoke-static {v8, v10}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 483
    :try_start_1
    new-instance v10, Ljava/security/DigestInputStream;

    iget-object v11, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->messageDigest:Ljava/security/MessageDigest;

    invoke-direct {v10, v8, v11}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    .line 485
    :goto_2
    iget v11, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->readBufferSize:I

    invoke-virtual {v10, v0, v6, v11}, Ljava/security/DigestInputStream;->read([BII)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_2

    goto :goto_2

    .line 488
    :cond_2
    invoke-virtual {v10}, Ljava/security/DigestInputStream;->close()V

    .line 489
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 491
    :try_start_2
    iget-object v8, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v8}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v8

    .line 492
    iget-object v10, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->totalproperty:Ljava/lang/String;

    if-eqz v10, :cond_3

    .line 493
    iget-object v10, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->allDigests:Ljava/util/Map;

    invoke-interface {v10, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    :cond_3
    invoke-direct {p0, v8}, Lorg/apache/tools/ant/taskdefs/Checksum;->createDigestString([B)Ljava/lang/String;

    move-result-object v8

    .line 497
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 498
    instance-of v10, v5, Ljava/lang/String;

    if-eqz v10, :cond_6

    .line 499
    check-cast v5, Ljava/lang/String;

    .line 500
    iget-boolean v7, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->isCondition:Z

    if-eqz v7, :cond_5

    if-eqz v4, :cond_4

    .line 501
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->property:Ljava/lang/String;

    .line 502
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto/16 :goto_0

    :catch_0
    :cond_4
    :goto_3
    move v4, v6

    goto/16 :goto_1

    .line 504
    :cond_5
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Checksum;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v6

    invoke-virtual {v6, v5, v8}, Lorg/apache/tools/ant/Project;->setNewProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 506
    :cond_6
    instance-of v10, v5, Ljava/io/File;

    if-eqz v10, :cond_0

    .line 507
    iget-boolean v10, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->isCondition:Z

    if-eqz v10, :cond_7

    .line 508
    check-cast v5, Ljava/io/File;

    .line 509
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v7, :cond_4

    .line 512
    :try_start_3
    invoke-direct {p0, v5}, Lorg/apache/tools/ant/taskdefs/Checksum;->readChecksum(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_4

    .line 514
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_3
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v4, :cond_4

    move v6, v3

    goto :goto_3

    .line 523
    :cond_7
    :try_start_4
    check-cast v5, Ljava/io/File;

    .line 524
    invoke-virtual {v5}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v10

    new-array v11, v6, [Ljava/nio/file/OpenOption;

    invoke-static {v10, v11}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 525
    :try_start_5
    iget-object v11, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->format:Ljava/text/MessageFormat;

    const/4 v12, 0x5

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v8, v12, v6

    .line 527
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v12, v3

    .line 530
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    .line 529
    invoke-static {v5, v7}, Lorg/apache/tools/ant/util/FileUtils;->getRelativePath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v12, v6

    .line 533
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Checksum;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v5

    .line 534
    invoke-virtual {v5}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v5

    .line 533
    invoke-static {v5, v7}, Lorg/apache/tools/ant/util/FileUtils;->getRelativePath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v12, v9

    .line 536
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    aput-object v5, v12, v6

    .line 525
    invoke-virtual {v11, v12}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 537
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 525
    invoke-virtual {v10, v5}, Ljava/io/OutputStream;->write([B)V

    .line 538
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/io/OutputStream;->write([B)V

    .line 539
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto/16 :goto_1

    :catch_1
    move-exception v0

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    move-object v10, v1

    move-object v1, v8

    goto/16 :goto_6

    :catch_2
    move-exception v0

    move-object v10, v1

    move-object v1, v8

    goto :goto_5

    .line 544
    :cond_8
    :try_start_6
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->totalproperty:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 547
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->allDigests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-array v2, v6, [Ljava/io/File;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;

    .line 550
    new-instance v2, Lorg/apache/tools/ant/taskdefs/Checksum$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/apache/tools/ant/taskdefs/Checksum$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/taskdefs/Checksum;)V

    .line 551
    invoke-static {v2}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v2

    .line 550
    invoke-static {v2}, Ljava/util/Comparator;->nullsFirst(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 554
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->reset()V

    .line 555
    array-length v2, v0

    :goto_4
    if-ge v6, v2, :cond_9

    aget-object v3, v0, v6

    .line 557
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->allDigests:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 558
    iget-object v7, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v7, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 561
    invoke-direct {p0, v3}, Lorg/apache/tools/ant/taskdefs/Checksum;->getRelativeFilePath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 562
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/security/MessageDigest;->update([B)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 564
    :cond_9
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Checksum;->createDigestString([B)Ljava/lang/String;

    move-result-object v0

    .line 565
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Checksum;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->totalproperty:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lorg/apache/tools/ant/Project;->setNewProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 570
    :cond_a
    invoke-static {v1}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    .line 571
    invoke-static {v1}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    return v4

    :catchall_1
    move-exception v0

    move-object v10, v1

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v10, v1

    .line 568
    :goto_5
    :try_start_7
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Checksum;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    .line 570
    :goto_6
    invoke-static {v1}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    .line 571
    invoke-static {v10}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 572
    throw v0
.end method

.method private getChecksumFile(Ljava/io/File;)Ljava/io/File;
    .locals 3

    .line 453
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->todir:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 455
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/Checksum;->getRelativeFilePath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 456
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->todir:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 458
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    .line 462
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 464
    :goto_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->fileext:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private getRelativeFilePath(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    .line 637
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->relativeFilePaths:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 640
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Internal error: relativeFilePaths could not match file %s\nplease file a bug report on this"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method private readChecksum(Ljava/io/File;)Ljava/lang/String;
    .locals 4

    .line 621
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    :try_start_1
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->format:Ljava/text/MessageFormat;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/MessageFormat;->parse(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 624
    array-length v2, v1

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    .line 627
    check-cast v1, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 628
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    .line 625
    :cond_0
    :try_start_3
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "failed to find a checksum"

    invoke-direct {v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v1

    .line 621
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/text/ParseException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 629
    :goto_1
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Couldn\'t read checksum file "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private validateAndExecute()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 324
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->fileext:Ljava/lang/String;

    .line 326
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->file:Ljava/io/File;

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->resources:Lorg/apache/tools/ant/taskdefs/Checksum$FileUnion;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Checksum$FileUnion;->size()I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 327
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Specify at least one source - a file or a resource collection."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->resources:Lorg/apache/tools/ant/taskdefs/Checksum$FileUnion;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Checksum$FileUnion;->isFilesystemOnly()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 331
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Can only calculate checksums for file-based resources."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_3
    :goto_1
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->file:Ljava/io/File;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    .line 334
    :cond_4
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Checksum cannot be generated for directories"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :cond_5
    :goto_2
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->file:Ljava/io/File;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->totalproperty:Ljava/lang/String;

    if-nez v1, :cond_6

    goto :goto_3

    .line 337
    :cond_6
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "File and Totalproperty cannot co-exist."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 339
    :cond_7
    :goto_3
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->property:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->fileext:Ljava/lang/String;

    if-nez v2, :cond_8

    goto :goto_4

    .line 340
    :cond_8
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Property and FileExt cannot co-exist."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    :goto_4
    const/4 v2, 0x1

    if-eqz v1, :cond_e

    .line 343
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->forceOverwrite:Z

    if-nez v1, :cond_d

    .line 348
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->resources:Lorg/apache/tools/ant/taskdefs/Checksum$FileUnion;

    const/4 v3, 0x0

    if-eqz v1, :cond_a

    .line 349
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Checksum$FileUnion;->size()I

    move-result v1

    add-int/2addr v3, v1

    .line 351
    :cond_a
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->file:Ljava/io/File;

    if-eqz v1, :cond_b

    add-int/lit8 v3, v3, 0x1

    :cond_b
    if-gt v3, v2, :cond_c

    goto :goto_5

    .line 355
    :cond_c
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Multiple files cannot be used when Property is specified"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 344
    :cond_d
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "ForceOverwrite cannot be used when Property is specified"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_e
    :goto_5
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->verifyProperty:Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 360
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->isCondition:Z

    :cond_f
    if-eqz v1, :cond_11

    .line 362
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->forceOverwrite:Z

    if-nez v1, :cond_10

    goto :goto_6

    .line 363
    :cond_10
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "VerifyProperty and ForceOverwrite cannot co-exist."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    :cond_11
    :goto_6
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->isCondition:Z

    if-eqz v1, :cond_13

    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->forceOverwrite:Z

    if-nez v1, :cond_12

    goto :goto_7

    .line 366
    :cond_12
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "ForceOverwrite cannot be used when conditions are being used."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    :goto_7
    const/4 v1, 0x0

    .line 369
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->messageDigest:Ljava/security/MessageDigest;

    .line 370
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->provider:Ljava/lang/String;

    if-eqz v1, :cond_14

    .line 372
    :try_start_0
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->algorithm:Ljava/lang/String;

    invoke-static {v2, v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->messageDigest:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    .line 374
    :goto_8
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Checksum;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 378
    :cond_14
    :try_start_1
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->algorithm:Ljava/lang/String;

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->messageDigest:Ljava/security/MessageDigest;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2

    .line 383
    :goto_9
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->messageDigest:Ljava/security/MessageDigest;

    if-eqz v1, :cond_1d

    .line 386
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->fileext:Ljava/lang/String;

    if-nez v1, :cond_15

    .line 387
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->algorithm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->fileext:Ljava/lang/String;

    goto :goto_a

    .line 388
    :cond_15
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 392
    :goto_a
    :try_start_2
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->resources:Lorg/apache/tools/ant/taskdefs/Checksum$FileUnion;

    const/16 v2, 0x2f

    if-eqz v1, :cond_18

    .line 393
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Checksum$FileUnion;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/tools/ant/types/Resource;

    .line 394
    const-class v4, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-interface {v4}, Lorg/apache/tools/ant/types/resources/FileProvider;->getFile()Ljava/io/File;

    move-result-object v4

    .line 395
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->totalproperty:Ljava/lang/String;

    if-nez v5, :cond_16

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->todir:Ljava/io/File;

    if-eqz v5, :cond_17

    .line 399
    :cond_16
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->relativeFilePaths:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v3

    sget-char v6, Ljava/io/File;->separatorChar:C

    invoke-virtual {v3, v6, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    :cond_17
    invoke-direct {p0, v4}, Lorg/apache/tools/ant/taskdefs/Checksum;->addToIncludeFileMap(Ljava/io/File;)V

    goto :goto_b

    .line 404
    :cond_18
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->file:Ljava/io/File;

    if-eqz v1, :cond_1b

    .line 405
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->totalproperty:Ljava/lang/String;

    if-nez v3, :cond_19

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->todir:Ljava/io/File;

    if-eqz v3, :cond_1a

    .line 406
    :cond_19
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->relativeFilePaths:Ljava/util/Map;

    .line 407
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    sget-char v5, Ljava/io/File;->separatorChar:C

    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 406
    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    :cond_1a
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->file:Ljava/io/File;

    invoke-direct {p0, v1}, Lorg/apache/tools/ant/taskdefs/Checksum;->addToIncludeFileMap(Ljava/io/File;)V

    .line 411
    :cond_1b
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Checksum;->generateChecksums()Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 413
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->fileext:Ljava/lang/String;

    .line 414
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->includeFileMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    return v1

    :catchall_0
    move-exception v1

    .line 413
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->fileext:Ljava/lang/String;

    .line 414
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->includeFileMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 415
    throw v1

    .line 389
    :cond_1c
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "File extension when specified must not be an empty string"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 384
    :cond_1d
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Unable to create Message Digest"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Checksum;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    :catch_2
    move-exception v0

    .line 380
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Checksum;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 289
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->resources:Lorg/apache/tools/ant/taskdefs/Checksum$FileUnion;

    if-nez v0, :cond_1

    new-instance v0, Lorg/apache/tools/ant/taskdefs/Checksum$FileUnion;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/Checksum$FileUnion;-><init>()V

    :cond_1
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->resources:Lorg/apache/tools/ant/taskdefs/Checksum$FileUnion;

    .line 290
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Checksum$FileUnion;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    return-void
.end method

.method public addFileset(Lorg/apache/tools/ant/types/FileSet;)V
    .locals 0

    .line 278
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Checksum;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    return-void
.end method

.method public eval()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 316
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->isCondition:Z

    .line 317
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Checksum;->validateAndExecute()Z

    move-result v0

    return v0
.end method

.method public execute()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 299
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->isCondition:Z

    .line 300
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Checksum;->validateAndExecute()Z

    move-result v0

    .line 301
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->verifyProperty:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 302
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Checksum;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->verifyProperty:Ljava/lang/String;

    .line 303
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 302
    invoke-virtual {v1, v2, v0}, Lorg/apache/tools/ant/Project;->setNewProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setAlgorithm(Ljava/lang/String;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->algorithm:Ljava/lang/String;

    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->file:Ljava/io/File;

    return-void
.end method

.method public setFileext(Ljava/lang/String;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->fileext:Ljava/lang/String;

    return-void
.end method

.method public setForceOverwrite(Z)V
    .locals 0

    .line 240
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->forceOverwrite:Z

    return-void
.end method

.method public setFormat(Lorg/apache/tools/ant/taskdefs/Checksum$FormatElement;)V
    .locals 0

    .line 258
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Checksum$FormatElement;->getFormat()Ljava/text/MessageFormat;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->format:Ljava/text/MessageFormat;

    return-void
.end method

.method public setPattern(Ljava/lang/String;)V
    .locals 1

    .line 270
    new-instance v0, Ljava/text/MessageFormat;

    invoke-direct {v0, p1}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->format:Ljava/text/MessageFormat;

    return-void
.end method

.method public setProperty(Ljava/lang/String;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->property:Ljava/lang/String;

    return-void
.end method

.method public setProvider(Ljava/lang/String;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->provider:Ljava/lang/String;

    return-void
.end method

.method public setReadBufferSize(I)V
    .locals 0

    .line 248
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->readBufferSize:I

    return-void
.end method

.method public setTodir(Ljava/io/File;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->todir:Ljava/io/File;

    return-void
.end method

.method public setTotalproperty(Ljava/lang/String;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->totalproperty:Ljava/lang/String;

    return-void
.end method

.method public setVerifyproperty(Ljava/lang/String;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->verifyProperty:Ljava/lang/String;

    return-void
.end method
