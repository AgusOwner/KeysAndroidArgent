.class public Lorg/apache/tools/zip/ZipFile;
.super Ljava/lang/Object;
.source "ZipFile.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/zip/ZipFile$Entry;,
        Lorg/apache/tools/zip/ZipFile$OffsetEntry;,
        Lorg/apache/tools/zip/ZipFile$BoundedInputStream;,
        Lorg/apache/tools/zip/ZipFile$NameAndComment;
    }
.end annotation


# static fields
.field static final BYTE_SHIFT:I = 0x8

.field private static final CFD_LOCATOR_OFFSET:I = 0x10

.field private static final CFH_LEN:I = 0x2a

.field private static final CFH_SIG:J

.field private static final HASH_SIZE:I = 0x1fd

.field private static final LFH_OFFSET_FOR_FILENAME_LENGTH:J = 0x1aL

.field private static final MAX_EOCD_SIZE:I = 0x10015

.field private static final MIN_EOCD_SIZE:I = 0x16

.field static final NIBLET_MASK:I = 0xf

.field private static final POS_0:I = 0x0

.field private static final POS_1:I = 0x1

.field private static final POS_2:I = 0x2

.field private static final POS_3:I = 0x3

.field private static final ZIP64_EOCDL_LENGTH:I = 0x14

.field private static final ZIP64_EOCDL_LOCATOR_OFFSET:I = 0x8

.field private static final ZIP64_EOCD_CFD_LOCATOR_OFFSET:I = 0x30


# instance fields
.field private final CFH_BUF:[B

.field private final DWORD_BUF:[B

.field private final OFFSET_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/apache/tools/zip/ZipEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final SHORT_BUF:[B

.field private final WORD_BUF:[B

.field private final archive:Ljava/io/RandomAccessFile;

.field private final archiveName:Ljava/lang/String;

.field private volatile closed:Z

.field private final encoding:Ljava/lang/String;

.field private final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/zip/ZipEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final nameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList<",
            "Lorg/apache/tools/zip/ZipEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private final useUnicodeExtraFields:Z

.field private final zipEncoding:Lorg/apache/tools/zip/ZipEncoding;


# direct methods
.method public static synthetic $r8$lambda$LXv42HBDJWRrhLOlLkvfiIf58Dk(Ljava/util/Collection;)Ljava/util/Enumeration;
    .locals 0

    invoke-static {p0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 443
    sget-object v0, Lorg/apache/tools/zip/ZipOutputStream;->CFH_SIG:[B

    .line 444
    invoke-static {v0}, Lorg/apache/tools/zip/ZipLong;->getValue([B)J

    move-result-wide v0

    sput-wide v0, Lorg/apache/tools/zip/ZipFile;->CFH_SIG:J

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 152
    invoke-direct {p0, p1, v0}, Lorg/apache/tools/zip/ZipFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 192
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/tools/zip/ZipFile;-><init>(Ljava/io/File;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/zip/ZipFile;->entries:Ljava/util/List;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x1fd

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/tools/zip/ZipFile;->nameMap:Ljava/util/Map;

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 138
    iput-object v0, p0, Lorg/apache/tools/zip/ZipFile;->DWORD_BUF:[B

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 139
    iput-object v0, p0, Lorg/apache/tools/zip/ZipFile;->WORD_BUF:[B

    const/16 v0, 0x2a

    new-array v0, v0, [B

    .line 140
    iput-object v0, p0, Lorg/apache/tools/zip/ZipFile;->CFH_BUF:[B

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 141
    iput-object v0, p0, Lorg/apache/tools/zip/ZipFile;->SHORT_BUF:[B

    .line 1016
    new-instance v0, Lorg/apache/tools/zip/ZipFile$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lorg/apache/tools/zip/ZipFile$$ExternalSyntheticLambda2;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/zip/ZipFile;->OFFSET_COMPARATOR:Ljava/util/Comparator;

    .line 209
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/zip/ZipFile;->archiveName:Ljava/lang/String;

    .line 210
    iput-object p2, p0, Lorg/apache/tools/zip/ZipFile;->encoding:Ljava/lang/String;

    .line 211
    invoke-static {p2}, Lorg/apache/tools/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lorg/apache/tools/zip/ZipEncoding;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/tools/zip/ZipFile;->zipEncoding:Lorg/apache/tools/zip/ZipEncoding;

    .line 212
    iput-boolean p3, p0, Lorg/apache/tools/zip/ZipFile;->useUnicodeExtraFields:Z

    .line 213
    new-instance p2, Ljava/io/RandomAccessFile;

    const-string p3, "r"

    invoke-direct {p2, p1, p3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    .line 217
    :try_start_0
    invoke-direct {p0}, Lorg/apache/tools/zip/ZipFile;->populateFromCentralDirectory()Ljava/util/Map;

    move-result-object p1

    .line 218
    invoke-direct {p0, p1}, Lorg/apache/tools/zip/ZipFile;->resolveLocalFileHeaderData(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 221
    iput-boolean p1, p0, Lorg/apache/tools/zip/ZipFile;->closed:Z

    return-void

    :catchall_0
    move-exception p1

    const/4 p2, 0x1

    iput-boolean p2, p0, Lorg/apache/tools/zip/ZipFile;->closed:Z

    .line 224
    :try_start_1
    iget-object p2, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 229
    :catch_0
    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/tools/zip/ZipFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-direct {p0, v0, p2, p1}, Lorg/apache/tools/zip/ZipFile;-><init>(Ljava/io/File;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$600(Lorg/apache/tools/zip/ZipFile;)Ljava/io/RandomAccessFile;
    .locals 0

    .line 76
    iget-object p0, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    return-object p0
.end method

.method public static closeQuietly(Lorg/apache/tools/zip/ZipFile;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 263
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method static synthetic lambda$new$1(Lorg/apache/tools/zip/ZipEntry;Lorg/apache/tools/zip/ZipEntry;)I
    .locals 7

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    .line 1021
    :cond_0
    instance-of v1, p0, Lorg/apache/tools/zip/ZipFile$Entry;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p0, Lorg/apache/tools/zip/ZipFile$Entry;

    goto :goto_0

    :cond_1
    move-object p0, v2

    .line 1022
    :goto_0
    instance-of v1, p1, Lorg/apache/tools/zip/ZipFile$Entry;

    if-eqz v1, :cond_2

    move-object v2, p1

    check-cast v2, Lorg/apache/tools/zip/ZipFile$Entry;

    :cond_2
    const/4 p1, 0x1

    if-nez p0, :cond_3

    return p1

    :cond_3
    const/4 v1, -0x1

    if-nez v2, :cond_4

    return v1

    .line 1029
    :cond_4
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipFile$Entry;->getOffsetEntry()Lorg/apache/tools/zip/ZipFile$OffsetEntry;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/tools/zip/ZipFile$OffsetEntry;->access$200(Lorg/apache/tools/zip/ZipFile$OffsetEntry;)J

    move-result-wide v3

    .line 1030
    invoke-virtual {v2}, Lorg/apache/tools/zip/ZipFile$Entry;->getOffsetEntry()Lorg/apache/tools/zip/ZipFile$OffsetEntry;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/tools/zip/ZipFile$OffsetEntry;->access$200(Lorg/apache/tools/zip/ZipFile$OffsetEntry;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long p0, v3, v5

    if-nez p0, :cond_5

    goto :goto_1

    :cond_5
    if-gez p0, :cond_6

    move v0, v1

    goto :goto_1

    :cond_6
    move v0, p1

    :goto_1
    return v0
.end method

.method static synthetic lambda$resolveLocalFileHeaderData$0(Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 0

    .line 915
    new-instance p0, Ljava/util/LinkedList;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    return-object p0
.end method

.method private populateFromCentralDirectory()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/apache/tools/zip/ZipEntry;",
            "Lorg/apache/tools/zip/ZipFile$NameAndComment;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 459
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 461
    invoke-direct {p0}, Lorg/apache/tools/zip/ZipFile;->positionAtCentralDirectory()V

    .line 463
    iget-object v1, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lorg/apache/tools/zip/ZipFile;->WORD_BUF:[B

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 464
    iget-object v1, p0, Lorg/apache/tools/zip/ZipFile;->WORD_BUF:[B

    invoke-static {v1}, Lorg/apache/tools/zip/ZipLong;->getValue([B)J

    move-result-wide v1

    .line 466
    sget-wide v3, Lorg/apache/tools/zip/ZipFile;->CFH_SIG:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lorg/apache/tools/zip/ZipFile;->startsWithLocalFileHeader()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 467
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "central directory is empty, can\'t expand corrupt archive."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 471
    :cond_1
    :goto_0
    sget-wide v3, Lorg/apache/tools/zip/ZipFile;->CFH_SIG:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 472
    invoke-direct {p0, v0}, Lorg/apache/tools/zip/ZipFile;->readCentralDirectoryEntry(Ljava/util/Map;)V

    .line 473
    iget-object v1, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lorg/apache/tools/zip/ZipFile;->WORD_BUF:[B

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 474
    iget-object v1, p0, Lorg/apache/tools/zip/ZipFile;->WORD_BUF:[B

    invoke-static {v1}, Lorg/apache/tools/zip/ZipLong;->getValue([B)J

    move-result-wide v1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private positionAtCentralDirectory()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 725
    invoke-direct {p0}, Lorg/apache/tools/zip/ZipFile;->positionAtEndOfCentralDirectoryRecord()V

    .line 727
    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    .line 728
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    const-wide/16 v2, 0x14

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 730
    iget-object v1, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 731
    iget-object v1, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lorg/apache/tools/zip/ZipFile;->WORD_BUF:[B

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 732
    sget-object v1, Lorg/apache/tools/zip/ZipOutputStream;->ZIP64_EOCD_LOC_SIG:[B

    iget-object v2, p0, Lorg/apache/tools/zip/ZipFile;->WORD_BUF:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    :cond_1
    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    const/16 v0, 0x10

    .line 737
    invoke-direct {p0, v0}, Lorg/apache/tools/zip/ZipFile;->skipBytes(I)V

    .line 739
    :cond_2
    invoke-direct {p0}, Lorg/apache/tools/zip/ZipFile;->positionAtCentralDirectory32()V

    goto :goto_1

    .line 741
    :cond_3
    invoke-direct {p0}, Lorg/apache/tools/zip/ZipFile;->positionAtCentralDirectory64()V

    :goto_1
    return-void
.end method

.method private positionAtCentralDirectory32()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x10

    .line 775
    invoke-direct {p0, v0}, Lorg/apache/tools/zip/ZipFile;->skipBytes(I)V

    .line 776
    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/apache/tools/zip/ZipFile;->WORD_BUF:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 777
    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/apache/tools/zip/ZipFile;->WORD_BUF:[B

    invoke-static {v1}, Lorg/apache/tools/zip/ZipLong;->getValue([B)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    return-void
.end method

.method private positionAtCentralDirectory64()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 753
    invoke-direct {p0, v0}, Lorg/apache/tools/zip/ZipFile;->skipBytes(I)V

    .line 755
    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/apache/tools/zip/ZipFile;->DWORD_BUF:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 756
    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/apache/tools/zip/ZipFile;->DWORD_BUF:[B

    invoke-static {v1}, Lorg/apache/tools/zip/ZipEightByteInteger;->getLongValue([B)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 757
    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/apache/tools/zip/ZipFile;->WORD_BUF:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 758
    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile;->WORD_BUF:[B

    sget-object v1, Lorg/apache/tools/zip/ZipOutputStream;->ZIP64_EOCD_SIG:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2c

    .line 762
    invoke-direct {p0, v0}, Lorg/apache/tools/zip/ZipFile;->skipBytes(I)V

    .line 764
    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/apache/tools/zip/ZipFile;->DWORD_BUF:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 765
    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/apache/tools/zip/ZipFile;->DWORD_BUF:[B

    invoke-static {v1}, Lorg/apache/tools/zip/ZipEightByteInteger;->getLongValue([B)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    return-void

    .line 759
    :cond_0
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "archive\'s ZIP64 end of central directory locator is corrupt."

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private positionAtEndOfCentralDirectoryRecord()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v1, 0x16

    const-wide/32 v3, 0x10015

    .line 786
    sget-object v5, Lorg/apache/tools/zip/ZipOutputStream;->EOCD_SIG:[B

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/tools/zip/ZipFile;->tryToLocateSignature(JJ[B)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 789
    :cond_0
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "archive is not a ZIP archive"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readCentralDirectoryEntry(Ljava/util/Map;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/apache/tools/zip/ZipEntry;",
            "Lorg/apache/tools/zip/ZipFile$NameAndComment;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 491
    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/apache/tools/zip/ZipFile;->CFH_BUF:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 493
    new-instance v0, Lorg/apache/tools/zip/ZipFile$OffsetEntry;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/tools/zip/ZipFile$OffsetEntry;-><init>(Lorg/apache/tools/zip/ZipFile$1;)V

    .line 494
    new-instance v2, Lorg/apache/tools/zip/ZipFile$Entry;

    invoke-direct {v2, v0}, Lorg/apache/tools/zip/ZipFile$Entry;-><init>(Lorg/apache/tools/zip/ZipFile$OffsetEntry;)V

    .line 496
    iget-object v3, p0, Lorg/apache/tools/zip/ZipFile;->CFH_BUF:[B

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/apache/tools/zip/ZipShort;->getValue([BI)I

    move-result v3

    const/16 v4, 0x8

    shr-int/2addr v3, v4

    and-int/lit8 v3, v3, 0xf

    .line 498
    invoke-virtual {v2, v3}, Lorg/apache/tools/zip/ZipFile$Entry;->setPlatform(I)V

    const/4 v3, 0x4

    .line 502
    iget-object v5, p0, Lorg/apache/tools/zip/ZipFile;->CFH_BUF:[B

    invoke-static {v5, v3}, Lorg/apache/tools/zip/GeneralPurposeBit;->parse([BI)Lorg/apache/tools/zip/GeneralPurposeBit;

    move-result-object v3

    .line 503
    invoke-virtual {v3}, Lorg/apache/tools/zip/GeneralPurposeBit;->usesUTF8ForNames()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 505
    sget-object v6, Lorg/apache/tools/zip/ZipEncodingHelper;->UTF8_ZIP_ENCODING:Lorg/apache/tools/zip/ZipEncoding;

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lorg/apache/tools/zip/ZipFile;->zipEncoding:Lorg/apache/tools/zip/ZipEncoding;

    .line 506
    :goto_0
    invoke-virtual {v2, v3}, Lorg/apache/tools/zip/ZipFile$Entry;->setGeneralPurposeBit(Lorg/apache/tools/zip/GeneralPurposeBit;)V

    const/4 v3, 0x6

    .line 510
    iget-object v7, p0, Lorg/apache/tools/zip/ZipFile;->CFH_BUF:[B

    invoke-static {v7, v3}, Lorg/apache/tools/zip/ZipShort;->getValue([BI)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/tools/zip/ZipFile$Entry;->setMethod(I)V

    .line 513
    iget-object v3, p0, Lorg/apache/tools/zip/ZipFile;->CFH_BUF:[B

    invoke-static {v3, v4}, Lorg/apache/tools/zip/ZipLong;->getValue([BI)J

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/apache/tools/zip/ZipUtil;->dosToJavaTime(J)J

    move-result-wide v3

    .line 514
    invoke-virtual {v2, v3, v4}, Lorg/apache/tools/zip/ZipFile$Entry;->setTime(J)V

    const/16 v3, 0xc

    .line 517
    iget-object v4, p0, Lorg/apache/tools/zip/ZipFile;->CFH_BUF:[B

    invoke-static {v4, v3}, Lorg/apache/tools/zip/ZipLong;->getValue([BI)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/apache/tools/zip/ZipFile$Entry;->setCrc(J)V

    const/16 v3, 0x10

    .line 520
    iget-object v4, p0, Lorg/apache/tools/zip/ZipFile;->CFH_BUF:[B

    invoke-static {v4, v3}, Lorg/apache/tools/zip/ZipLong;->getValue([BI)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/apache/tools/zip/ZipFile$Entry;->setCompressedSize(J)V

    const/16 v3, 0x14

    .line 523
    iget-object v4, p0, Lorg/apache/tools/zip/ZipFile;->CFH_BUF:[B

    invoke-static {v4, v3}, Lorg/apache/tools/zip/ZipLong;->getValue([BI)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/apache/tools/zip/ZipFile$Entry;->setSize(J)V

    const/16 v3, 0x18

    .line 526
    iget-object v4, p0, Lorg/apache/tools/zip/ZipFile;->CFH_BUF:[B

    invoke-static {v4, v3}, Lorg/apache/tools/zip/ZipShort;->getValue([BI)I

    move-result v3

    const/16 v4, 0x1a

    .line 529
    iget-object v7, p0, Lorg/apache/tools/zip/ZipFile;->CFH_BUF:[B

    invoke-static {v7, v4}, Lorg/apache/tools/zip/ZipShort;->getValue([BI)I

    move-result v4

    const/16 v7, 0x1c

    .line 532
    iget-object v8, p0, Lorg/apache/tools/zip/ZipFile;->CFH_BUF:[B

    invoke-static {v8, v7}, Lorg/apache/tools/zip/ZipShort;->getValue([BI)I

    move-result v7

    const/16 v8, 0x1e

    .line 535
    iget-object v9, p0, Lorg/apache/tools/zip/ZipFile;->CFH_BUF:[B

    invoke-static {v9, v8}, Lorg/apache/tools/zip/ZipShort;->getValue([BI)I

    move-result v8

    const/16 v9, 0x20

    .line 538
    iget-object v10, p0, Lorg/apache/tools/zip/ZipFile;->CFH_BUF:[B

    invoke-static {v10, v9}, Lorg/apache/tools/zip/ZipShort;->getValue([BI)I

    move-result v9

    invoke-virtual {v2, v9}, Lorg/apache/tools/zip/ZipFile$Entry;->setInternalAttributes(I)V

    const/16 v9, 0x22

    .line 541
    iget-object v10, p0, Lorg/apache/tools/zip/ZipFile;->CFH_BUF:[B

    invoke-static {v10, v9}, Lorg/apache/tools/zip/ZipLong;->getValue([BI)J

    move-result-wide v9

    invoke-virtual {v2, v9, v10}, Lorg/apache/tools/zip/ZipFile$Entry;->setExternalAttributes(J)V

    .line 544
    iget-object v9, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v9

    iget-object v11, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v11

    sub-long/2addr v9, v11

    int-to-long v11, v3

    cmp-long v9, v9, v11

    if-ltz v9, :cond_4

    .line 547
    new-array v3, v3, [B

    .line 548
    iget-object v9, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v9, v3}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 549
    invoke-interface {v6, v3}, Lorg/apache/tools/zip/ZipEncoding;->decode([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9, v3}, Lorg/apache/tools/zip/ZipFile$Entry;->setName(Ljava/lang/String;[B)V

    .line 552
    iget-object v9, p0, Lorg/apache/tools/zip/ZipFile;->CFH_BUF:[B

    const/16 v10, 0x26

    invoke-static {v9, v10}, Lorg/apache/tools/zip/ZipLong;->getValue([BI)J

    move-result-wide v9

    invoke-static {v0, v9, v10}, Lorg/apache/tools/zip/ZipFile$OffsetEntry;->access$202(Lorg/apache/tools/zip/ZipFile$OffsetEntry;J)J

    .line 554
    iget-object v9, p0, Lorg/apache/tools/zip/ZipFile;->entries:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 556
    iget-object v9, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v9

    iget-object v11, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v11

    sub-long/2addr v9, v11

    int-to-long v11, v4

    cmp-long v9, v9, v11

    if-ltz v9, :cond_3

    .line 559
    new-array v4, v4, [B

    .line 560
    iget-object v9, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v9, v4}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 561
    invoke-virtual {v2, v4}, Lorg/apache/tools/zip/ZipFile$Entry;->setCentralDirectoryExtra([B)V

    .line 563
    invoke-direct {p0, v2, v0, v8}, Lorg/apache/tools/zip/ZipFile;->setSizesAndOffsetFromZip64Extra(Lorg/apache/tools/zip/ZipEntry;Lorg/apache/tools/zip/ZipFile$OffsetEntry;I)V

    .line 565
    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v10

    sub-long/2addr v8, v10

    int-to-long v10, v7

    cmp-long v0, v8, v10

    if-ltz v0, :cond_2

    .line 568
    new-array v0, v7, [B

    .line 569
    iget-object v4, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v4, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 570
    invoke-interface {v6, v0}, Lorg/apache/tools/zip/ZipEncoding;->decode([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/apache/tools/zip/ZipFile$Entry;->setComment(Ljava/lang/String;)V

    if-nez v5, :cond_1

    .line 572
    iget-boolean v4, p0, Lorg/apache/tools/zip/ZipFile;->useUnicodeExtraFields:Z

    if-eqz v4, :cond_1

    .line 573
    new-instance v4, Lorg/apache/tools/zip/ZipFile$NameAndComment;

    invoke-direct {v4, v3, v0, v1}, Lorg/apache/tools/zip/ZipFile$NameAndComment;-><init>([B[BLorg/apache/tools/zip/ZipFile$1;)V

    invoke-interface {p1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    .line 566
    :cond_2
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 557
    :cond_3
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 545
    :cond_4
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method private resolveLocalFileHeaderData(Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/apache/tools/zip/ZipEntry;",
            "Lorg/apache/tools/zip/ZipFile$NameAndComment;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 873
    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/zip/ZipEntry;

    .line 876
    check-cast v1, Lorg/apache/tools/zip/ZipFile$Entry;

    .line 877
    invoke-virtual {v1}, Lorg/apache/tools/zip/ZipFile$Entry;->getOffsetEntry()Lorg/apache/tools/zip/ZipFile$OffsetEntry;

    move-result-object v2

    .line 878
    invoke-static {v2}, Lorg/apache/tools/zip/ZipFile$OffsetEntry;->access$200(Lorg/apache/tools/zip/ZipFile$OffsetEntry;)J

    move-result-wide v3

    .line 879
    iget-object v5, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    const-wide/16 v6, 0x1a

    add-long/2addr v3, v6

    invoke-virtual {v5, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 880
    iget-object v5, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v6, p0, Lorg/apache/tools/zip/ZipFile;->SHORT_BUF:[B

    invoke-virtual {v5, v6}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 881
    iget-object v5, p0, Lorg/apache/tools/zip/ZipFile;->SHORT_BUF:[B

    invoke-static {v5}, Lorg/apache/tools/zip/ZipShort;->getValue([B)I

    move-result v5

    .line 882
    iget-object v6, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v7, p0, Lorg/apache/tools/zip/ZipFile;->SHORT_BUF:[B

    invoke-virtual {v6, v7}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 883
    iget-object v6, p0, Lorg/apache/tools/zip/ZipFile;->SHORT_BUF:[B

    invoke-static {v6}, Lorg/apache/tools/zip/ZipShort;->getValue([B)I

    move-result v6

    move v7, v5

    :goto_1
    if-lez v7, :cond_1

    .line 886
    iget-object v8, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v8, v7}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result v8

    if-lez v8, :cond_0

    sub-int/2addr v7, v8

    goto :goto_1

    .line 888
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "failed to skip file name in local file header"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 893
    :cond_1
    iget-object v7, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    iget-object v9, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v9

    sub-long/2addr v7, v9

    int-to-long v9, v6

    cmp-long v7, v7, v9

    if-ltz v7, :cond_3

    .line 896
    new-array v6, v6, [B

    .line 897
    iget-object v7, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v7, v6}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 899
    :try_start_0
    invoke-virtual {v1, v6}, Lorg/apache/tools/zip/ZipFile$Entry;->setExtra([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v6, 0x2

    add-long/2addr v3, v6

    add-long/2addr v3, v6

    int-to-long v5, v5

    add-long/2addr v3, v5

    add-long/2addr v3, v9

    .line 905
    invoke-static {v2, v3, v4}, Lorg/apache/tools/zip/ZipFile$OffsetEntry;->access$002(Lorg/apache/tools/zip/ZipFile$OffsetEntry;J)J

    .line 908
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 909
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/tools/zip/ZipFile$NameAndComment;

    .line 910
    invoke-static {v2}, Lorg/apache/tools/zip/ZipFile$NameAndComment;->access$400(Lorg/apache/tools/zip/ZipFile$NameAndComment;)[B

    move-result-object v3

    .line 911
    invoke-static {v2}, Lorg/apache/tools/zip/ZipFile$NameAndComment;->access$500(Lorg/apache/tools/zip/ZipFile$NameAndComment;)[B

    move-result-object v2

    .line 910
    invoke-static {v1, v3, v2}, Lorg/apache/tools/zip/ZipUtil;->setNameAndCommentFromExtraFields(Lorg/apache/tools/zip/ZipEntry;[B[B)V

    .line 914
    :cond_2
    invoke-virtual {v1}, Lorg/apache/tools/zip/ZipFile$Entry;->getName()Ljava/lang/String;

    move-result-object v2

    .line 915
    iget-object v3, p0, Lorg/apache/tools/zip/ZipFile;->nameMap:Ljava/util/Map;

    new-instance v4, Lorg/apache/tools/zip/ZipFile$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lorg/apache/tools/zip/ZipFile$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    .line 916
    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 901
    new-instance v0, Ljava/util/zip/ZipException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid extra data in entry "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/tools/zip/ZipFile$Entry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 902
    invoke-virtual {v0, p1}, Ljava/util/zip/ZipException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 903
    throw v0

    .line 894
    :cond_3
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_4
    return-void
.end method

.method private setSizesAndOffsetFromZip64Extra(Lorg/apache/tools/zip/ZipEntry;Lorg/apache/tools/zip/ZipFile$OffsetEntry;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 593
    sget-object v0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->HEADER_ID:Lorg/apache/tools/zip/ZipShort;

    .line 595
    invoke-virtual {p1, v0}, Lorg/apache/tools/zip/ZipEntry;->getExtraField(Lorg/apache/tools/zip/ZipShort;)Lorg/apache/tools/zip/ZipExtraField;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;

    if-eqz v0, :cond_8

    .line 597
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getSize()J

    move-result-wide v1

    const-wide v3, 0xffffffffL

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v5

    .line 598
    :goto_0
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v6

    cmp-long v6, v6, v3

    if-nez v6, :cond_1

    move v6, v2

    goto :goto_1

    :cond_1
    move v6, v5

    .line 600
    :goto_1
    invoke-static {p2}, Lorg/apache/tools/zip/ZipFile$OffsetEntry;->access$200(Lorg/apache/tools/zip/ZipFile$OffsetEntry;)J

    move-result-wide v7

    cmp-long v3, v7, v3

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, v5

    :goto_2
    const v4, 0xffff

    if-ne p3, v4, :cond_3

    goto :goto_3

    :cond_3
    move v2, v5

    .line 601
    :goto_3
    invoke-virtual {v0, v1, v6, v3, v2}, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->reparseCentralDirectoryData(ZZZZ)V

    if-eqz v1, :cond_4

    .line 607
    invoke-virtual {v0}, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->getSize()Lorg/apache/tools/zip/ZipEightByteInteger;

    move-result-object p3

    invoke-virtual {p3}, Lorg/apache/tools/zip/ZipEightByteInteger;->getLongValue()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lorg/apache/tools/zip/ZipEntry;->setSize(J)V

    goto :goto_4

    :cond_4
    if-eqz v6, :cond_5

    .line 609
    new-instance p3, Lorg/apache/tools/zip/ZipEightByteInteger;

    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getSize()J

    move-result-wide v4

    invoke-direct {p3, v4, v5}, Lorg/apache/tools/zip/ZipEightByteInteger;-><init>(J)V

    invoke-virtual {v0, p3}, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->setSize(Lorg/apache/tools/zip/ZipEightByteInteger;)V

    :cond_5
    :goto_4
    if-eqz v6, :cond_6

    .line 613
    invoke-virtual {v0}, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->getCompressedSize()Lorg/apache/tools/zip/ZipEightByteInteger;

    move-result-object p3

    invoke-virtual {p3}, Lorg/apache/tools/zip/ZipEightByteInteger;->getLongValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lorg/apache/tools/zip/ZipEntry;->setCompressedSize(J)V

    goto :goto_5

    :cond_6
    if-eqz v1, :cond_7

    .line 615
    new-instance p3, Lorg/apache/tools/zip/ZipEightByteInteger;

    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v1

    invoke-direct {p3, v1, v2}, Lorg/apache/tools/zip/ZipEightByteInteger;-><init>(J)V

    invoke-virtual {v0, p3}, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->setCompressedSize(Lorg/apache/tools/zip/ZipEightByteInteger;)V

    :cond_7
    :goto_5
    if-eqz v3, :cond_8

    .line 620
    invoke-virtual {v0}, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->getRelativeHeaderOffset()Lorg/apache/tools/zip/ZipEightByteInteger;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEightByteInteger;->getLongValue()J

    move-result-wide v0

    .line 619
    invoke-static {p2, v0, v1}, Lorg/apache/tools/zip/ZipFile$OffsetEntry;->access$202(Lorg/apache/tools/zip/ZipFile$OffsetEntry;J)J

    :cond_8
    return-void
.end method

.method private skipBytes(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 840
    iget-object v1, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    sub-int v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result v1

    if-lez v1, :cond_0

    add-int/2addr v0, v1

    goto :goto_0

    .line 842
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    return-void
.end method

.method private startsWithLocalFileHeader()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 925
    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 926
    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/apache/tools/zip/ZipFile;->WORD_BUF:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 927
    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile;->WORD_BUF:[B

    sget-object v1, Lorg/apache/tools/zip/ZipOutputStream;->LFH_SIG:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method private tryToLocateSignature(JJ[B)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 802
    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 803
    iget-object p1, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    .line 804
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide p1

    sub-long/2addr p1, p3

    const-wide/16 p3, 0x0

    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    cmp-long p3, v0, p3

    const/4 p4, 0x0

    if-ltz p3, :cond_2

    :goto_0
    cmp-long p3, v0, p1

    if-ltz p3, :cond_2

    .line 807
    iget-object p3, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {p3, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 808
    iget-object p3, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->read()I

    move-result p3

    const/4 v2, -0x1

    if-ne p3, v2, :cond_0

    goto :goto_1

    .line 812
    :cond_0
    aget-byte v2, p5, p4

    if-ne p3, v2, :cond_1

    .line 813
    iget-object p3, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->read()I

    move-result p3

    const/4 v2, 0x1

    .line 814
    aget-byte v3, p5, v2

    if-ne p3, v3, :cond_1

    .line 815
    iget-object p3, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->read()I

    move-result p3

    const/4 v3, 0x2

    .line 816
    aget-byte v3, p5, v3

    if-ne p3, v3, :cond_1

    .line 817
    iget-object p3, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->read()I

    move-result p3

    const/4 v3, 0x3

    .line 818
    aget-byte v3, p5, v3

    if-ne p3, v3, :cond_1

    move p4, v2

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz p4, :cond_3

    .line 828
    iget-object p1, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    :cond_3
    return p4
.end method


# virtual methods
.method public canReadEntryData(Lorg/apache/tools/zip/ZipEntry;)Z
    .locals 0

    .line 356
    invoke-static {p1}, Lorg/apache/tools/zip/ZipUtil;->canHandleEntryData(Lorg/apache/tools/zip/ZipEntry;)Z

    move-result p1

    return p1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 250
    iput-boolean v0, p0, Lorg/apache/tools/zip/ZipFile;->closed:Z

    .line 252
    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-void
.end method

.method protected finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 411
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/tools/zip/ZipFile;->closed:Z

    if-nez v0, :cond_0

    .line 412
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Cleaning up unclosed %s for archive %s%n"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 413
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lorg/apache/tools/zip/ZipFile;->archiveName:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 412
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 414
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipFile;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 418
    throw v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 238
    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getEntries(Ljava/lang/String;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable<",
            "Lorg/apache/tools/zip/ZipEntry;",
            ">;"
        }
    .end annotation

    .line 324
    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile;->nameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 326
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getEntries()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Lorg/apache/tools/zip/ZipEntry;",
            ">;"
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile;->entries:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getEntriesInPhysicalOrder(Ljava/lang/String;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable<",
            "Lorg/apache/tools/zip/ZipEntry;",
            ">;"
        }
    .end annotation

    .line 339
    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile;->nameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile;->nameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile;->OFFSET_COMPARATOR:Ljava/util/Comparator;

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 341
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    return-object p1

    .line 343
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getEntriesInPhysicalOrder()Ljava/util/Enumeration;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Lorg/apache/tools/zip/ZipEntry;",
            ">;"
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/zip/ZipFile;->OFFSET_COMPARATOR:Ljava/util/Comparator;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 294
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    new-instance v2, Lorg/apache/tools/zip/ZipFile$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lorg/apache/tools/zip/ZipFile$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->collectingAndThen(Ljava/util/stream/Collector;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    .line 293
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Enumeration;

    return-object v0
.end method

.method public getEntry(Ljava/lang/String;)Lorg/apache/tools/zip/ZipEntry;
    .locals 1

    .line 310
    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile;->nameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/LinkedList;

    if-eqz p1, :cond_0

    .line 311
    invoke-virtual {p1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/tools/zip/ZipEntry;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getInputStream(Lorg/apache/tools/zip/ZipEntry;)Ljava/io/InputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 369
    instance-of v0, p1, Lorg/apache/tools/zip/ZipFile$Entry;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 373
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/apache/tools/zip/ZipFile$Entry;

    invoke-virtual {v0}, Lorg/apache/tools/zip/ZipFile$Entry;->getOffsetEntry()Lorg/apache/tools/zip/ZipFile$OffsetEntry;

    move-result-object v0

    .line 374
    invoke-static {p1}, Lorg/apache/tools/zip/ZipUtil;->checkRequestedFeatures(Lorg/apache/tools/zip/ZipEntry;)V

    .line 375
    invoke-static {v0}, Lorg/apache/tools/zip/ZipFile$OffsetEntry;->access$000(Lorg/apache/tools/zip/ZipFile$OffsetEntry;)J

    move-result-wide v3

    .line 378
    new-instance v0, Lorg/apache/tools/zip/ZipFile$BoundedInputStream;

    .line 379
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v5

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/apache/tools/zip/ZipFile$BoundedInputStream;-><init>(Lorg/apache/tools/zip/ZipFile;JJ)V

    .line 380
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getMethod()I

    move-result v1

    if-eqz v1, :cond_2

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 384
    invoke-virtual {v0}, Lorg/apache/tools/zip/ZipFile$BoundedInputStream;->addDummy()V

    .line 385
    new-instance p1, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 386
    new-instance v1, Lorg/apache/tools/zip/ZipFile$1;

    invoke-direct {v1, p0, v0, p1, p1}, Lorg/apache/tools/zip/ZipFile$1;-><init>(Lorg/apache/tools/zip/ZipFile;Ljava/io/InputStream;Ljava/util/zip/Inflater;Ljava/util/zip/Inflater;)V

    return-object v1

    .line 394
    :cond_1
    new-instance v0, Ljava/util/zip/ZipException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Found unsupported compression method "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 395
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getMethod()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 400
    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile;->archiveName:Ljava/lang/String;

    return-object v0
.end method
