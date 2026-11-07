.class public Lorg/apache/tools/tar/TarOutputStream;
.super Ljava/io/FilterOutputStream;
.source "TarOutputStream.java"


# static fields
.field private static final ASCII:Lorg/apache/tools/zip/ZipEncoding;

.field public static final BIGNUMBER_ERROR:I = 0x0

.field public static final BIGNUMBER_POSIX:I = 0x2

.field public static final BIGNUMBER_STAR:I = 0x1

.field public static final LONGFILE_ERROR:I = 0x0

.field public static final LONGFILE_GNU:I = 0x2

.field public static final LONGFILE_POSIX:I = 0x3

.field public static final LONGFILE_TRUNCATE:I = 0x1


# instance fields
.field private addPaxHeadersForNonAsciiNames:Z

.field protected assemBuf:[B

.field protected assemLen:I

.field private bigNumberMode:I

.field protected buffer:Lorg/apache/tools/tar/TarBuffer;

.field private closed:Z

.field protected currBytes:J

.field protected currName:Ljava/lang/String;

.field protected currSize:J

.field protected debug:Z

.field private final encoding:Lorg/apache/tools/zip/ZipEncoding;

.field private finished:Z

.field private haveUnclosedEntry:Z

.field protected longFileMode:I

.field protected oneBuf:[B

.field protected recordBuf:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ASCII"

    .line 95
    invoke-static {v0}, Lorg/apache/tools/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lorg/apache/tools/zip/ZipEncoding;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/tar/TarOutputStream;->ASCII:Lorg/apache/tools/zip/ZipEncoding;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2

    const/16 v0, 0x2800

    const/16 v1, 0x200

    .line 103
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/tools/tar/TarOutputStream;-><init>(Ljava/io/OutputStream;II)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1

    const/16 v0, 0x200

    .line 123
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/tools/tar/TarOutputStream;-><init>(Ljava/io/OutputStream;II)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;II)V
    .locals 1

    const/4 v0, 0x0

    .line 145
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/tools/tar/TarOutputStream;-><init>(Ljava/io/OutputStream;IILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;IILjava/lang/String;)V
    .locals 1

    .line 158
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v0, 0x0

    .line 78
    iput v0, p0, Lorg/apache/tools/tar/TarOutputStream;->longFileMode:I

    .line 81
    iput v0, p0, Lorg/apache/tools/tar/TarOutputStream;->bigNumberMode:I

    .line 83
    iput-boolean v0, p0, Lorg/apache/tools/tar/TarOutputStream;->closed:Z

    .line 86
    iput-boolean v0, p0, Lorg/apache/tools/tar/TarOutputStream;->haveUnclosedEntry:Z

    .line 89
    iput-boolean v0, p0, Lorg/apache/tools/tar/TarOutputStream;->finished:Z

    .line 93
    iput-boolean v0, p0, Lorg/apache/tools/tar/TarOutputStream;->addPaxHeadersForNonAsciiNames:Z

    .line 159
    invoke-static {p4}, Lorg/apache/tools/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lorg/apache/tools/zip/ZipEncoding;

    move-result-object p4

    iput-object p4, p0, Lorg/apache/tools/tar/TarOutputStream;->encoding:Lorg/apache/tools/zip/ZipEncoding;

    .line 161
    new-instance p4, Lorg/apache/tools/tar/TarBuffer;

    invoke-direct {p4, p1, p2, p3}, Lorg/apache/tools/tar/TarBuffer;-><init>(Ljava/io/OutputStream;II)V

    iput-object p4, p0, Lorg/apache/tools/tar/TarOutputStream;->buffer:Lorg/apache/tools/tar/TarBuffer;

    .line 162
    iput-boolean v0, p0, Lorg/apache/tools/tar/TarOutputStream;->debug:Z

    .line 163
    iput v0, p0, Lorg/apache/tools/tar/TarOutputStream;->assemLen:I

    .line 164
    new-array p1, p3, [B

    iput-object p1, p0, Lorg/apache/tools/tar/TarOutputStream;->assemBuf:[B

    .line 165
    new-array p1, p3, [B

    iput-object p1, p0, Lorg/apache/tools/tar/TarOutputStream;->recordBuf:[B

    const/4 p1, 0x1

    new-array p1, p1, [B

    .line 166
    iput-object p1, p0, Lorg/apache/tools/tar/TarOutputStream;->oneBuf:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;ILjava/lang/String;)V
    .locals 1

    const/16 v0, 0x200

    .line 134
    invoke-direct {p0, p1, p2, v0, p3}, Lorg/apache/tools/tar/TarOutputStream;-><init>(Ljava/io/OutputStream;IILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x2800

    const/16 v1, 0x200

    .line 113
    invoke-direct {p0, p1, v0, v1, p2}, Lorg/apache/tools/tar/TarOutputStream;-><init>(Ljava/io/OutputStream;IILjava/lang/String;)V

    return-void
.end method

.method private addPaxHeaderForBigNumber(Ljava/util/Map;Ljava/lang/String;JJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "JJ)V"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_0

    cmp-long p5, p3, p5

    if-lez p5, :cond_1

    .line 570
    :cond_0
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private addPaxHeadersForBigNumbers(Ljava/util/Map;Lorg/apache/tools/tar/TarEntry;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/tools/tar/TarEntry;",
            ")V"
        }
    .end annotation

    const-string v2, "size"

    .line 548
    invoke-virtual/range {p2 .. p2}, Lorg/apache/tools/tar/TarEntry;->getSize()J

    move-result-wide v3

    const-wide v5, 0x1ffffffffL

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/apache/tools/tar/TarOutputStream;->addPaxHeaderForBigNumber(Ljava/util/Map;Ljava/lang/String;JJ)V

    const-string v9, "gid"

    .line 550
    invoke-virtual/range {p2 .. p2}, Lorg/apache/tools/tar/TarEntry;->getLongGroupId()J

    move-result-wide v10

    const-wide/32 v12, 0x1fffff

    move-object v7, p0

    move-object v8, p1

    invoke-direct/range {v7 .. v13}, Lorg/apache/tools/tar/TarOutputStream;->addPaxHeaderForBigNumber(Ljava/util/Map;Ljava/lang/String;JJ)V

    const-string v2, "mtime"

    .line 553
    invoke-virtual/range {p2 .. p2}, Lorg/apache/tools/tar/TarEntry;->getModTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v3, 0x3e8

    div-long v3, v0, v3

    move-object v0, p0

    move-object v1, p1

    .line 552
    invoke-direct/range {v0 .. v6}, Lorg/apache/tools/tar/TarOutputStream;->addPaxHeaderForBigNumber(Ljava/util/Map;Ljava/lang/String;JJ)V

    const-string v9, "uid"

    .line 555
    invoke-virtual/range {p2 .. p2}, Lorg/apache/tools/tar/TarEntry;->getLongUserId()J

    move-result-wide v10

    invoke-direct/range {v7 .. v13}, Lorg/apache/tools/tar/TarOutputStream;->addPaxHeaderForBigNumber(Ljava/util/Map;Ljava/lang/String;JJ)V

    const-string v2, "SCHILY.devmajor"

    .line 559
    invoke-virtual/range {p2 .. p2}, Lorg/apache/tools/tar/TarEntry;->getDevMajor()I

    move-result v0

    int-to-long v3, v0

    const-wide/32 v5, 0x1fffff

    move-object v0, p0

    .line 558
    invoke-direct/range {v0 .. v6}, Lorg/apache/tools/tar/TarOutputStream;->addPaxHeaderForBigNumber(Ljava/util/Map;Ljava/lang/String;JJ)V

    const-string v9, "SCHILY.devminor"

    .line 561
    invoke-virtual/range {p2 .. p2}, Lorg/apache/tools/tar/TarEntry;->getDevMinor()I

    move-result v0

    int-to-long v10, v0

    .line 560
    invoke-direct/range {v7 .. v13}, Lorg/apache/tools/tar/TarOutputStream;->addPaxHeaderForBigNumber(Ljava/util/Map;Ljava/lang/String;JJ)V

    const-string v1, "mode"

    .line 563
    invoke-virtual/range {p2 .. p2}, Lorg/apache/tools/tar/TarEntry;->getMode()I

    move-result v0

    int-to-long v2, v0

    const-wide/32 v4, 0x1fffff

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/tools/tar/TarOutputStream;->failForBigNumber(Ljava/lang/String;JJ)V

    return-void
.end method

.method private failForBigNumber(Ljava/lang/String;JJ)V
    .locals 7

    const-string v6, ""

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 589
    invoke-direct/range {v0 .. v6}, Lorg/apache/tools/tar/TarOutputStream;->failForBigNumber(Ljava/lang/String;JJLjava/lang/String;)V

    return-void
.end method

.method private failForBigNumber(Ljava/lang/String;JJLjava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p6, p2, v0

    if-ltz p6, :cond_0

    cmp-long p6, p2, p4

    if-gtz p6, :cond_0

    return-void

    .line 598
    :cond_0
    new-instance p6, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\' is too big ( > "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " )"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p6, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p6
.end method

.method private failForBigNumberWithPosixMessage(Ljava/lang/String;JJ)V
    .locals 7

    const-string v6, " Use STAR or POSIX extensions to overcome this limit"

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 593
    invoke-direct/range {v0 .. v6}, Lorg/apache/tools/tar/TarOutputStream;->failForBigNumber(Ljava/lang/String;JJLjava/lang/String;)V

    return-void
.end method

.method private failForBigNumbers(Lorg/apache/tools/tar/TarEntry;)V
    .locals 12

    const-string v1, "entry size"

    .line 575
    invoke-virtual {p1}, Lorg/apache/tools/tar/TarEntry;->getSize()J

    move-result-wide v2

    const-wide v4, 0x1ffffffffL

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/tools/tar/TarOutputStream;->failForBigNumber(Ljava/lang/String;JJ)V

    const-string v7, "group id"

    .line 576
    invoke-virtual {p1}, Lorg/apache/tools/tar/TarEntry;->getLongGroupId()J

    move-result-wide v8

    const-wide/32 v10, 0x1fffff

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lorg/apache/tools/tar/TarOutputStream;->failForBigNumberWithPosixMessage(Ljava/lang/String;JJ)V

    const-string v1, "last modification time"

    .line 578
    invoke-virtual {p1}, Lorg/apache/tools/tar/TarEntry;->getModTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-wide v4, 0x1ffffffffL

    move-object v0, p0

    .line 577
    invoke-direct/range {v0 .. v5}, Lorg/apache/tools/tar/TarOutputStream;->failForBigNumber(Ljava/lang/String;JJ)V

    const-string v7, "user id"

    .line 580
    invoke-virtual {p1}, Lorg/apache/tools/tar/TarEntry;->getLongUserId()J

    move-result-wide v8

    invoke-direct/range {v6 .. v11}, Lorg/apache/tools/tar/TarOutputStream;->failForBigNumber(Ljava/lang/String;JJ)V

    const-string v1, "mode"

    .line 581
    invoke-virtual {p1}, Lorg/apache/tools/tar/TarEntry;->getMode()I

    move-result v0

    int-to-long v2, v0

    const-wide/32 v4, 0x1fffff

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/tools/tar/TarOutputStream;->failForBigNumber(Ljava/lang/String;JJ)V

    const-string v7, "major device number"

    .line 582
    invoke-virtual {p1}, Lorg/apache/tools/tar/TarEntry;->getDevMajor()I

    move-result v0

    int-to-long v8, v0

    invoke-direct/range {v6 .. v11}, Lorg/apache/tools/tar/TarOutputStream;->failForBigNumber(Ljava/lang/String;JJ)V

    const-string v1, "minor device number"

    .line 584
    invoke-virtual {p1}, Lorg/apache/tools/tar/TarEntry;->getDevMinor()I

    move-result p1

    int-to-long v2, p1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/tools/tar/TarOutputStream;->failForBigNumber(Ljava/lang/String;JJ)V

    return-void
.end method

.method private handleLongName(Lorg/apache/tools/tar/TarEntry;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;BLjava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/tar/TarEntry;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "B",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 630
    iget-object v0, p0, Lorg/apache/tools/tar/TarOutputStream;->encoding:Lorg/apache/tools/zip/ZipEncoding;

    invoke-interface {v0, p2}, Lorg/apache/tools/zip/ZipEncoding;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 631
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sub-int/2addr v1, v2

    const/16 v2, 0x64

    const/4 v3, 0x0

    if-lt v1, v2, :cond_3

    .line 634
    iget v2, p0, Lorg/apache/tools/tar/TarOutputStream;->longFileMode:I

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-ne v2, v4, :cond_0

    .line 635
    invoke-interface {p3, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v5

    :cond_0
    const/4 p3, 0x2

    if-ne v2, p3, :cond_1

    .line 640
    new-instance p2, Lorg/apache/tools/tar/TarEntry;

    const-string p3, "././@LongLink"

    invoke-direct {p2, p3, p5}, Lorg/apache/tools/tar/TarEntry;-><init>(Ljava/lang/String;B)V

    add-int/lit8 p3, v1, 0x1

    int-to-long p3, p3

    .line 643
    invoke-virtual {p2, p3, p4}, Lorg/apache/tools/tar/TarEntry;->setSize(J)V

    .line 644
    invoke-direct {p0, p1, p2}, Lorg/apache/tools/tar/TarOutputStream;->transferModTime(Lorg/apache/tools/tar/TarEntry;Lorg/apache/tools/tar/TarEntry;)V

    .line 645
    invoke-virtual {p0, p2}, Lorg/apache/tools/tar/TarOutputStream;->putNextEntry(Lorg/apache/tools/tar/TarEntry;)V

    .line 646
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p2

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/tools/tar/TarOutputStream;->write([BII)V

    .line 647
    invoke-virtual {p0, v3}, Lorg/apache/tools/tar/TarOutputStream;->write(I)V

    .line 648
    invoke-virtual {p0}, Lorg/apache/tools/tar/TarOutputStream;->closeEntry()V

    goto :goto_0

    :cond_1
    if-ne v2, v5, :cond_2

    goto :goto_0

    .line 650
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, " \'"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "\' is too long ( > 100 bytes)"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    return v3
.end method

.method private stripTo7Bits(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 527
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-char v3, p1, v2

    and-int/lit8 v3, v3, 0x7f

    int-to-char v3, v3

    if-eqz v3, :cond_0

    .line 530
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 533
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private transferModTime(Lorg/apache/tools/tar/TarEntry;Lorg/apache/tools/tar/TarEntry;)V
    .locals 6

    .line 659
    invoke-virtual {p1}, Lorg/apache/tools/tar/TarEntry;->getModTime()Ljava/util/Date;

    move-result-object p1

    .line 660
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const-wide v4, 0x1ffffffffL

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 662
    :cond_0
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 664
    :cond_1
    invoke-virtual {p2, p1}, Lorg/apache/tools/tar/TarEntry;->setModTime(Ljava/util/Date;)V

    return-void
.end method

.method private writeEOFRecord()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 541
    iget-object v0, p0, Lorg/apache/tools/tar/TarOutputStream;->recordBuf:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 543
    iget-object v0, p0, Lorg/apache/tools/tar/TarOutputStream;->buffer:Lorg/apache/tools/tar/TarBuffer;

    iget-object v1, p0, Lorg/apache/tools/tar/TarOutputStream;->recordBuf:[B

    invoke-virtual {v0, v1}, Lorg/apache/tools/tar/TarBuffer;->writeRecord([B)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    iget-boolean v0, p0, Lorg/apache/tools/tar/TarOutputStream;->finished:Z

    if-nez v0, :cond_0

    .line 252
    invoke-virtual {p0}, Lorg/apache/tools/tar/TarOutputStream;->finish()V

    .line 255
    :cond_0
    iget-boolean v0, p0, Lorg/apache/tools/tar/TarOutputStream;->closed:Z

    if-nez v0, :cond_1

    .line 256
    iget-object v0, p0, Lorg/apache/tools/tar/TarOutputStream;->buffer:Lorg/apache/tools/tar/TarBuffer;

    invoke-virtual {v0}, Lorg/apache/tools/tar/TarBuffer;->close()V

    .line 257
    iget-object v0, p0, Lorg/apache/tools/tar/TarOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    const/4 v0, 0x1

    .line 258
    iput-boolean v0, p0, Lorg/apache/tools/tar/TarOutputStream;->closed:Z

    :cond_1
    return-void
.end method

.method public closeEntry()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 344
    iget-boolean v0, p0, Lorg/apache/tools/tar/TarOutputStream;->finished:Z

    if-nez v0, :cond_4

    .line 347
    iget-boolean v0, p0, Lorg/apache/tools/tar/TarOutputStream;->haveUnclosedEntry:Z

    if-eqz v0, :cond_3

    .line 350
    iget v0, p0, Lorg/apache/tools/tar/TarOutputStream;->assemLen:I

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 351
    :goto_0
    iget-object v2, p0, Lorg/apache/tools/tar/TarOutputStream;->assemBuf:[B

    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 352
    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 355
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/tar/TarOutputStream;->buffer:Lorg/apache/tools/tar/TarBuffer;

    invoke-virtual {v0, v2}, Lorg/apache/tools/tar/TarBuffer;->writeRecord([B)V

    .line 357
    iget-wide v2, p0, Lorg/apache/tools/tar/TarOutputStream;->currBytes:J

    iget v0, p0, Lorg/apache/tools/tar/TarOutputStream;->assemLen:I

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/tools/tar/TarOutputStream;->currBytes:J

    .line 358
    iput v1, p0, Lorg/apache/tools/tar/TarOutputStream;->assemLen:I

    .line 361
    :cond_1
    iget-wide v2, p0, Lorg/apache/tools/tar/TarOutputStream;->currBytes:J

    iget-wide v4, p0, Lorg/apache/tools/tar/TarOutputStream;->currSize:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_2

    .line 367
    iput-boolean v1, p0, Lorg/apache/tools/tar/TarOutputStream;->haveUnclosedEntry:Z

    return-void

    .line 362
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "entry \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/tools/tar/TarOutputStream;->currName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' closed at \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/tools/tar/TarOutputStream;->currBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' before the \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/tools/tar/TarOutputStream;->currSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' bytes specified in the header were written"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No current entry to close"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream has already been finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public finish()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    iget-boolean v0, p0, Lorg/apache/tools/tar/TarOutputStream;->finished:Z

    if-nez v0, :cond_1

    .line 234
    iget-boolean v0, p0, Lorg/apache/tools/tar/TarOutputStream;->haveUnclosedEntry:Z

    if-nez v0, :cond_0

    .line 237
    invoke-direct {p0}, Lorg/apache/tools/tar/TarOutputStream;->writeEOFRecord()V

    .line 238
    invoke-direct {p0}, Lorg/apache/tools/tar/TarOutputStream;->writeEOFRecord()V

    .line 239
    iget-object v0, p0, Lorg/apache/tools/tar/TarOutputStream;->buffer:Lorg/apache/tools/tar/TarBuffer;

    invoke-virtual {v0}, Lorg/apache/tools/tar/TarBuffer;->flushBlock()V

    const/4 v0, 0x1

    .line 240
    iput-boolean v0, p0, Lorg/apache/tools/tar/TarOutputStream;->finished:Z

    return-void

    .line 235
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "This archives contains unclosed entries."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "This archive has already been finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRecordSize()I
    .locals 1

    .line 268
    iget-object v0, p0, Lorg/apache/tools/tar/TarOutputStream;->buffer:Lorg/apache/tools/tar/TarBuffer;

    invoke-virtual {v0}, Lorg/apache/tools/tar/TarBuffer;->getRecordSize()I

    move-result v0

    return v0
.end method

.method public putNextEntry(Lorg/apache/tools/tar/TarEntry;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    iget-boolean v0, p0, Lorg/apache/tools/tar/TarOutputStream;->finished:Z

    if-nez v0, :cond_9

    .line 287
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 288
    invoke-virtual {p1}, Lorg/apache/tools/tar/TarEntry;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v5, "path"

    const/16 v6, 0x4c

    const-string v7, "file name"

    move-object v1, p0

    move-object v2, p1

    move-object v3, v8

    move-object v4, v0

    .line 289
    invoke-direct/range {v1 .. v7}, Lorg/apache/tools/tar/TarOutputStream;->handleLongName(Lorg/apache/tools/tar/TarEntry;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;BLjava/lang/String;)Z

    move-result v9

    .line 292
    invoke-virtual {p1}, Lorg/apache/tools/tar/TarEntry;->getLinkName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v10, :cond_0

    .line 293
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v5, "linkpath"

    const/16 v6, 0x4b

    const-string v7, "link name"

    move-object v1, p0

    move-object v2, p1

    move-object v3, v10

    move-object v4, v0

    .line 294
    invoke-direct/range {v1 .. v7}, Lorg/apache/tools/tar/TarOutputStream;->handleLongName(Lorg/apache/tools/tar/TarEntry;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;BLjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v12

    goto :goto_0

    :cond_0
    move v1, v11

    .line 297
    :goto_0
    iget v2, p0, Lorg/apache/tools/tar/TarOutputStream;->bigNumberMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 298
    invoke-direct {p0, v0, p1}, Lorg/apache/tools/tar/TarOutputStream;->addPaxHeadersForBigNumbers(Ljava/util/Map;Lorg/apache/tools/tar/TarEntry;)V

    goto :goto_1

    :cond_1
    if-eq v2, v12, :cond_2

    .line 300
    invoke-direct {p0, p1}, Lorg/apache/tools/tar/TarOutputStream;->failForBigNumbers(Lorg/apache/tools/tar/TarEntry;)V

    .line 303
    :cond_2
    :goto_1
    iget-boolean v2, p0, Lorg/apache/tools/tar/TarOutputStream;->addPaxHeadersForNonAsciiNames:Z

    if-eqz v2, :cond_3

    if-nez v9, :cond_3

    sget-object v2, Lorg/apache/tools/tar/TarOutputStream;->ASCII:Lorg/apache/tools/zip/ZipEncoding;

    .line 304
    invoke-interface {v2, v8}, Lorg/apache/tools/zip/ZipEncoding;->canEncode(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "path"

    .line 305
    invoke-interface {v0, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    :cond_3
    iget-boolean v2, p0, Lorg/apache/tools/tar/TarOutputStream;->addPaxHeadersForNonAsciiNames:Z

    if-eqz v2, :cond_5

    if-nez v1, :cond_5

    .line 309
    invoke-virtual {p1}, Lorg/apache/tools/tar/TarEntry;->isLink()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lorg/apache/tools/tar/TarEntry;->isSymbolicLink()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    sget-object v1, Lorg/apache/tools/tar/TarOutputStream;->ASCII:Lorg/apache/tools/zip/ZipEncoding;

    .line 310
    invoke-interface {v1, v10}, Lorg/apache/tools/zip/ZipEncoding;->canEncode(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "linkpath"

    .line 311
    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    :cond_5
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 315
    invoke-virtual {p0, p1, v8, v0}, Lorg/apache/tools/tar/TarOutputStream;->writePaxHeaders(Lorg/apache/tools/tar/TarEntry;Ljava/lang/String;Ljava/util/Map;)V

    .line 318
    :cond_6
    iget-object v0, p0, Lorg/apache/tools/tar/TarOutputStream;->recordBuf:[B

    iget-object v1, p0, Lorg/apache/tools/tar/TarOutputStream;->encoding:Lorg/apache/tools/zip/ZipEncoding;

    iget v2, p0, Lorg/apache/tools/tar/TarOutputStream;->bigNumberMode:I

    if-ne v2, v12, :cond_7

    move v11, v12

    :cond_7
    invoke-virtual {p1, v0, v1, v11}, Lorg/apache/tools/tar/TarEntry;->writeEntryHeader([BLorg/apache/tools/zip/ZipEncoding;Z)V

    .line 320
    iget-object v0, p0, Lorg/apache/tools/tar/TarOutputStream;->buffer:Lorg/apache/tools/tar/TarBuffer;

    iget-object v1, p0, Lorg/apache/tools/tar/TarOutputStream;->recordBuf:[B

    invoke-virtual {v0, v1}, Lorg/apache/tools/tar/TarBuffer;->writeRecord([B)V

    const-wide/16 v0, 0x0

    .line 322
    iput-wide v0, p0, Lorg/apache/tools/tar/TarOutputStream;->currBytes:J

    .line 324
    invoke-virtual {p1}, Lorg/apache/tools/tar/TarEntry;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 325
    iput-wide v0, p0, Lorg/apache/tools/tar/TarOutputStream;->currSize:J

    goto :goto_2

    .line 327
    :cond_8
    invoke-virtual {p1}, Lorg/apache/tools/tar/TarEntry;->getSize()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/tools/tar/TarOutputStream;->currSize:J

    .line 329
    :goto_2
    iput-object v8, p0, Lorg/apache/tools/tar/TarOutputStream;->currName:Ljava/lang/String;

    .line 330
    iput-boolean v12, p0, Lorg/apache/tools/tar/TarOutputStream;->haveUnclosedEntry:Z

    return-void

    .line 285
    :cond_9
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Stream has already been finished"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAddPaxHeadersForNonAsciiNames(Z)V
    .locals 0

    .line 199
    iput-boolean p1, p0, Lorg/apache/tools/tar/TarOutputStream;->addPaxHeadersForNonAsciiNames:Z

    return-void
.end method

.method public setBigNumberMode(I)V
    .locals 0

    .line 190
    iput p1, p0, Lorg/apache/tools/tar/TarOutputStream;->bigNumberMode:I

    return-void
.end method

.method public setBufferDebug(Z)V
    .locals 1

    .line 217
    iget-object v0, p0, Lorg/apache/tools/tar/TarOutputStream;->buffer:Lorg/apache/tools/tar/TarBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/tools/tar/TarBuffer;->setDebug(Z)V

    return-void
.end method

.method public setDebug(Z)V
    .locals 0

    .line 208
    iput-boolean p1, p0, Lorg/apache/tools/tar/TarOutputStream;->debug:Z

    return-void
.end method

.method public setLongFileMode(I)V
    .locals 0

    .line 178
    iput p1, p0, Lorg/apache/tools/tar/TarOutputStream;->longFileMode:I

    return-void
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 380
    iget-object v0, p0, Lorg/apache/tools/tar/TarOutputStream;->oneBuf:[B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 p1, 0x1

    .line 382
    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/tools/tar/TarOutputStream;->write([BII)V

    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 395
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/tools/tar/TarOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 414
    iget-wide v0, p0, Lorg/apache/tools/tar/TarOutputStream;->currBytes:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/tools/tar/TarOutputStream;->currSize:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_4

    .line 429
    iget v0, p0, Lorg/apache/tools/tar/TarOutputStream;->assemLen:I

    if-lez v0, :cond_1

    add-int v1, v0, p3

    .line 430
    iget-object v2, p0, Lorg/apache/tools/tar/TarOutputStream;->recordBuf:[B

    array-length v3, v2

    const/4 v4, 0x0

    if-lt v1, v3, :cond_0

    .line 431
    array-length v1, v2

    sub-int/2addr v1, v0

    .line 433
    iget-object v3, p0, Lorg/apache/tools/tar/TarOutputStream;->assemBuf:[B

    invoke-static {v3, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 435
    iget-object v0, p0, Lorg/apache/tools/tar/TarOutputStream;->recordBuf:[B

    iget v2, p0, Lorg/apache/tools/tar/TarOutputStream;->assemLen:I

    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 437
    iget-object v0, p0, Lorg/apache/tools/tar/TarOutputStream;->buffer:Lorg/apache/tools/tar/TarBuffer;

    iget-object v2, p0, Lorg/apache/tools/tar/TarOutputStream;->recordBuf:[B

    invoke-virtual {v0, v2}, Lorg/apache/tools/tar/TarBuffer;->writeRecord([B)V

    .line 439
    iget-wide v2, p0, Lorg/apache/tools/tar/TarOutputStream;->currBytes:J

    iget-object v0, p0, Lorg/apache/tools/tar/TarOutputStream;->recordBuf:[B

    array-length v0, v0

    int-to-long v5, v0

    add-long/2addr v2, v5

    iput-wide v2, p0, Lorg/apache/tools/tar/TarOutputStream;->currBytes:J

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    .line 442
    iput v4, p0, Lorg/apache/tools/tar/TarOutputStream;->assemLen:I

    goto :goto_0

    .line 444
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/tar/TarOutputStream;->assemBuf:[B

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, p3

    .line 448
    iget v0, p0, Lorg/apache/tools/tar/TarOutputStream;->assemLen:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/apache/tools/tar/TarOutputStream;->assemLen:I

    move p3, v4

    :cond_1
    :goto_0
    if-lez p3, :cond_3

    .line 459
    iget-object v0, p0, Lorg/apache/tools/tar/TarOutputStream;->recordBuf:[B

    array-length v0, v0

    if-ge p3, v0, :cond_2

    .line 460
    iget-object v0, p0, Lorg/apache/tools/tar/TarOutputStream;->assemBuf:[B

    iget v1, p0, Lorg/apache/tools/tar/TarOutputStream;->assemLen:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 463
    iget p1, p0, Lorg/apache/tools/tar/TarOutputStream;->assemLen:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/apache/tools/tar/TarOutputStream;->assemLen:I

    goto :goto_1

    .line 468
    :cond_2
    iget-object v0, p0, Lorg/apache/tools/tar/TarOutputStream;->buffer:Lorg/apache/tools/tar/TarBuffer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/tar/TarBuffer;->writeRecord([BI)V

    .line 470
    iget-object v0, p0, Lorg/apache/tools/tar/TarOutputStream;->recordBuf:[B

    array-length v0, v0

    .line 472
    iget-wide v1, p0, Lorg/apache/tools/tar/TarOutputStream;->currBytes:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/tools/tar/TarOutputStream;->currBytes:J

    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    goto :goto_0

    :cond_3
    :goto_1
    return-void

    .line 415
    :cond_4
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "request to write \'"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "\' bytes exceeds size in header of \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-wide v0, p0, Lorg/apache/tools/tar/TarOutputStream;->currSize:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "\' bytes for entry \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lorg/apache/tools/tar/TarOutputStream;->currName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "\'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method writePaxHeaders(Lorg/apache/tools/tar/TarEntry;Ljava/lang/String;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/tar/TarEntry;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "./PaxHeaders.X/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lorg/apache/tools/tar/TarOutputStream;->stripTo7Bits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 485
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x64

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    const/16 v0, 0x63

    .line 486
    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_0
    :goto_0
    const-string v0, "/"

    .line 488
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 491
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 493
    :cond_1
    new-instance v0, Lorg/apache/tools/tar/TarEntry;

    const/16 v1, 0x78

    invoke-direct {v0, p2, v1}, Lorg/apache/tools/tar/TarEntry;-><init>(Ljava/lang/String;B)V

    .line 495
    invoke-direct {p0, p1, v0}, Lorg/apache/tools/tar/TarOutputStream;->transferModTime(Lorg/apache/tools/tar/TarEntry;Lorg/apache/tools/tar/TarEntry;)V

    .line 497
    new-instance p1, Ljava/io/StringWriter;

    invoke-direct {p1}, Ljava/io/StringWriter;-><init>()V

    .line 498
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 499
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 500
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 501
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, 0x2

    .line 504
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 505
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    array-length v7, v7

    :goto_2
    if-eq v2, v7, :cond_2

    .line 513
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 514
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    array-length v2, v2

    move v8, v7

    move v7, v2

    move v2, v8

    goto :goto_2

    .line 516
    :cond_2
    invoke-virtual {p1, v3}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 518
    :cond_3
    invoke-virtual {p1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 519
    array-length p2, p1

    int-to-long p2, p2

    invoke-virtual {v0, p2, p3}, Lorg/apache/tools/tar/TarEntry;->setSize(J)V

    .line 520
    invoke-virtual {p0, v0}, Lorg/apache/tools/tar/TarOutputStream;->putNextEntry(Lorg/apache/tools/tar/TarEntry;)V

    .line 521
    invoke-virtual {p0, p1}, Lorg/apache/tools/tar/TarOutputStream;->write([B)V

    .line 522
    invoke-virtual {p0}, Lorg/apache/tools/tar/TarOutputStream;->closeEntry()V

    return-void
.end method
