.class public Lorg/apache/tools/zip/ZipOutputStream;
.super Ljava/io/FilterOutputStream;
.source "ZipOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;,
        Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x200

.field private static final CFH_COMMENT_LENGTH_OFFSET:I = 0x20

.field private static final CFH_COMPRESSED_SIZE_OFFSET:I = 0x14

.field private static final CFH_CRC_OFFSET:I = 0x10

.field private static final CFH_DISK_NUMBER_OFFSET:I = 0x22

.field private static final CFH_EXTERNAL_ATTRIBUTES_OFFSET:I = 0x26

.field private static final CFH_EXTRA_LENGTH_OFFSET:I = 0x1e

.field private static final CFH_FILENAME_LENGTH_OFFSET:I = 0x1c

.field private static final CFH_FILENAME_OFFSET:I = 0x2e

.field private static final CFH_GPB_OFFSET:I = 0x8

.field private static final CFH_INTERNAL_ATTRIBUTES_OFFSET:I = 0x24

.field private static final CFH_LFH_OFFSET:I = 0x2a

.field private static final CFH_METHOD_OFFSET:I = 0xa

.field private static final CFH_ORIGINAL_SIZE_OFFSET:I = 0x18

.field protected static final CFH_SIG:[B

.field private static final CFH_SIG_OFFSET:I = 0x0

.field private static final CFH_TIME_OFFSET:I = 0xc

.field private static final CFH_VERSION_MADE_BY_OFFSET:I = 0x4

.field private static final CFH_VERSION_NEEDED_OFFSET:I = 0x6

.field protected static final DD_SIG:[B

.field public static final DEFAULT_COMPRESSION:I = -0x1

.field static final DEFAULT_ENCODING:Ljava/lang/String; = null

.field public static final DEFLATED:I = 0x8

.field private static final DEFLATER_BLOCK_SIZE:I = 0x2000

.field public static final EFS_FLAG:I = 0x800
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final EMPTY:[B

.field protected static final EOCD_SIG:[B

.field private static final LFH_COMPRESSED_SIZE_OFFSET:I = 0x12

.field private static final LFH_CRC_OFFSET:I = 0xe

.field private static final LFH_EXTRA_LENGTH_OFFSET:I = 0x1c

.field private static final LFH_FILENAME_LENGTH_OFFSET:I = 0x1a

.field private static final LFH_FILENAME_OFFSET:I = 0x1e

.field private static final LFH_GPB_OFFSET:I = 0x6

.field private static final LFH_METHOD_OFFSET:I = 0x8

.field private static final LFH_ORIGINAL_SIZE_OFFSET:I = 0x16

.field protected static final LFH_SIG:[B

.field private static final LFH_SIG_OFFSET:I = 0x0

.field private static final LFH_TIME_OFFSET:I = 0xa

.field private static final LFH_VERSION_NEEDED_OFFSET:I = 0x4

.field private static final LZERO:[B

.field private static final ONE:[B

.field public static final STORED:I

.field private static final ZERO:[B

.field static final ZIP64_EOCD_LOC_SIG:[B

.field static final ZIP64_EOCD_SIG:[B


# instance fields
.field protected buf:[B

.field private final calendarInstance:Ljava/util/Calendar;

.field private cdLength:J

.field private cdOffset:J

.field private comment:Ljava/lang/String;

.field private final crc:Ljava/util/zip/CRC32;

.field private createUnicodeExtraFields:Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;

.field protected final def:Ljava/util/zip/Deflater;

.field private encoding:Ljava/lang/String;

.field private final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/zip/ZipEntry;",
            ">;"
        }
    .end annotation
.end field

.field private entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

.field private fallbackToUTF8:Z

.field private finished:Z

.field private hasCompressionLevelChanged:Z

.field private hasUsedZip64:Z

.field private level:I

.field private method:I

.field private final offsets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/tools/zip/ZipEntry;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final oneByte:[B

.field private final raf:Ljava/io/RandomAccessFile;

.field private useUTF8Flag:Z

.field private written:J

.field private zip64Mode:Lorg/apache/tools/zip/Zip64Mode;

.field private zipEncoding:Lorg/apache/tools/zip/ZipEncoding;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 156
    sput-object v0, Lorg/apache/tools/zip/ZipOutputStream;->EMPTY:[B

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 234
    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/tools/zip/ZipOutputStream;->ZERO:[B

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 241
    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/tools/zip/ZipOutputStream;->LZERO:[B

    const-wide/16 v0, 0x1

    .line 243
    invoke-static {v0, v1}, Lorg/apache/tools/zip/ZipLong;->getBytes(J)[B

    move-result-object v0

    sput-object v0, Lorg/apache/tools/zip/ZipOutputStream;->ONE:[B

    .line 1030
    sget-object v0, Lorg/apache/tools/zip/ZipLong;->LFH_SIG:Lorg/apache/tools/zip/ZipLong;

    invoke-virtual {v0}, Lorg/apache/tools/zip/ZipLong;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/apache/tools/zip/ZipOutputStream;->LFH_SIG:[B

    .line 1036
    sget-object v0, Lorg/apache/tools/zip/ZipLong;->DD_SIG:Lorg/apache/tools/zip/ZipLong;

    invoke-virtual {v0}, Lorg/apache/tools/zip/ZipLong;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/apache/tools/zip/ZipOutputStream;->DD_SIG:[B

    .line 1042
    sget-object v0, Lorg/apache/tools/zip/ZipLong;->CFH_SIG:Lorg/apache/tools/zip/ZipLong;

    invoke-virtual {v0}, Lorg/apache/tools/zip/ZipLong;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/apache/tools/zip/ZipOutputStream;->CFH_SIG:[B

    const-wide/32 v0, 0x6054b50

    .line 1048
    invoke-static {v0, v1}, Lorg/apache/tools/zip/ZipLong;->getBytes(J)[B

    move-result-object v0

    sput-object v0, Lorg/apache/tools/zip/ZipOutputStream;->EOCD_SIG:[B

    const-wide/32 v0, 0x6064b50

    .line 1052
    invoke-static {v0, v1}, Lorg/apache/tools/zip/ZipLong;->getBytes(J)[B

    move-result-object v0

    sput-object v0, Lorg/apache/tools/zip/ZipOutputStream;->ZIP64_EOCD_SIG:[B

    const-wide/32 v0, 0x7064b50

    .line 1056
    invoke-static {v0, v1}, Lorg/apache/tools/zip/ZipLong;->getBytes(J)[B

    move-result-object v0

    sput-object v0, Lorg/apache/tools/zip/ZipOutputStream;->ZIP64_EOCD_LOC_SIG:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 351
    invoke-direct {p0, v0}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v1, 0x0

    .line 111
    iput-boolean v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->finished:Z

    const-string v2, ""

    .line 170
    iput-object v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->comment:Ljava/lang/String;

    const/4 v2, -0x1

    .line 177
    iput v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->level:I

    .line 185
    iput-boolean v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->hasCompressionLevelChanged:Z

    const/16 v2, 0x8

    .line 192
    iput v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->method:I

    .line 199
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->entries:Ljava/util/List;

    .line 206
    new-instance v2, Ljava/util/zip/CRC32;

    invoke-direct {v2}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    const-wide/16 v2, 0x0

    .line 213
    iput-wide v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    .line 220
    iput-wide v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->cdOffset:J

    .line 227
    iput-wide v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->cdLength:J

    .line 250
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lorg/apache/tools/zip/ZipOutputStream;->offsets:Ljava/util/Map;

    .line 262
    iput-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->encoding:Ljava/lang/String;

    .line 271
    sget-object v4, Lorg/apache/tools/zip/ZipOutputStream;->DEFAULT_ENCODING:Ljava/lang/String;

    .line 272
    invoke-static {v4}, Lorg/apache/tools/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lorg/apache/tools/zip/ZipEncoding;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/tools/zip/ZipOutputStream;->zipEncoding:Lorg/apache/tools/zip/ZipEncoding;

    .line 280
    new-instance v4, Ljava/util/zip/Deflater;

    iget v5, p0, Lorg/apache/tools/zip/ZipOutputStream;->level:I

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object v4, p0, Lorg/apache/tools/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    const/16 v4, 0x200

    new-array v4, v4, [B

    .line 292
    iput-object v4, p0, Lorg/apache/tools/zip/ZipOutputStream;->buf:[B

    .line 307
    iput-boolean v6, p0, Lorg/apache/tools/zip/ZipOutputStream;->useUTF8Flag:Z

    .line 312
    iput-boolean v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->fallbackToUTF8:Z

    .line 317
    sget-object v4, Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;->NEVER:Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;

    iput-object v4, p0, Lorg/apache/tools/zip/ZipOutputStream;->createUnicodeExtraFields:Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;

    .line 322
    iput-boolean v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->hasUsedZip64:Z

    .line 324
    sget-object v4, Lorg/apache/tools/zip/Zip64Mode;->AsNeeded:Lorg/apache/tools/zip/Zip64Mode;

    iput-object v4, p0, Lorg/apache/tools/zip/ZipOutputStream;->zip64Mode:Lorg/apache/tools/zip/Zip64Mode;

    .line 326
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/tools/zip/ZipOutputStream;->calendarInstance:Ljava/util/Calendar;

    new-array v4, v6, [B

    .line 331
    iput-object v4, p0, Lorg/apache/tools/zip/ZipOutputStream;->oneByte:[B

    .line 354
    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v4, p1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    :try_start_1
    invoke-virtual {v4, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-object v4, v0

    :catch_1
    if-eqz v4, :cond_0

    .line 359
    :try_start_2
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :cond_0
    move-object v0, v4

    .line 365
    :catch_2
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {p1, v1}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    move-object v4, v0

    .line 367
    :goto_1
    iput-object v4, p0, Lorg/apache/tools/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 4

    .line 339
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 p1, 0x0

    .line 111
    iput-boolean p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->finished:Z

    const-string v0, ""

    .line 170
    iput-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->comment:Ljava/lang/String;

    const/4 v0, -0x1

    .line 177
    iput v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->level:I

    .line 185
    iput-boolean p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->hasCompressionLevelChanged:Z

    const/16 v0, 0x8

    .line 192
    iput v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->method:I

    .line 199
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entries:Ljava/util/List;

    .line 206
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    const-wide/16 v0, 0x0

    .line 213
    iput-wide v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    .line 220
    iput-wide v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->cdOffset:J

    .line 227
    iput-wide v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->cdLength:J

    .line 250
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->offsets:Ljava/util/Map;

    const/4 v0, 0x0

    .line 262
    iput-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->encoding:Ljava/lang/String;

    .line 271
    sget-object v1, Lorg/apache/tools/zip/ZipOutputStream;->DEFAULT_ENCODING:Ljava/lang/String;

    .line 272
    invoke-static {v1}, Lorg/apache/tools/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lorg/apache/tools/zip/ZipEncoding;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->zipEncoding:Lorg/apache/tools/zip/ZipEncoding;

    .line 280
    new-instance v1, Ljava/util/zip/Deflater;

    iget v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->level:I

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    const/16 v1, 0x200

    new-array v1, v1, [B

    .line 292
    iput-object v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->buf:[B

    .line 307
    iput-boolean v3, p0, Lorg/apache/tools/zip/ZipOutputStream;->useUTF8Flag:Z

    .line 312
    iput-boolean p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->fallbackToUTF8:Z

    .line 317
    sget-object v1, Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;->NEVER:Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;

    iput-object v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->createUnicodeExtraFields:Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;

    .line 322
    iput-boolean p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->hasUsedZip64:Z

    .line 324
    sget-object p1, Lorg/apache/tools/zip/Zip64Mode;->AsNeeded:Lorg/apache/tools/zip/Zip64Mode;

    iput-object p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->zip64Mode:Lorg/apache/tools/zip/Zip64Mode;

    .line 326
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->calendarInstance:Ljava/util/Calendar;

    new-array p1, v3, [B

    .line 331
    iput-object p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->oneByte:[B

    .line 340
    iput-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    return-void
.end method

.method private addUnicodeExtraFields(Lorg/apache/tools/zip/ZipEntry;ZLjava/nio/ByteBuffer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1166
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->createUnicodeExtraFields:Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;

    sget-object v1, Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;->ALWAYS:Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;

    if-eq v0, v1, :cond_0

    if-nez p2, :cond_1

    .line 1168
    :cond_0
    new-instance p2, Lorg/apache/tools/zip/UnicodePathExtraField;

    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1169
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 1170
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    .line 1171
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    .line 1172
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->position()I

    move-result p3

    sub-int/2addr v3, p3

    invoke-direct {p2, v0, v1, v2, v3}, Lorg/apache/tools/zip/UnicodePathExtraField;-><init>(Ljava/lang/String;[BII)V

    .line 1168
    invoke-virtual {p1, p2}, Lorg/apache/tools/zip/ZipEntry;->addExtraField(Lorg/apache/tools/zip/ZipExtraField;)V

    .line 1175
    :cond_1
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getComment()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 1176
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_0

    .line 1180
    :cond_2
    iget-object p3, p0, Lorg/apache/tools/zip/ZipOutputStream;->createUnicodeExtraFields:Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;

    sget-object v0, Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;->ALWAYS:Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;

    if-eq p3, v0, :cond_3

    iget-object p3, p0, Lorg/apache/tools/zip/ZipOutputStream;->zipEncoding:Lorg/apache/tools/zip/ZipEncoding;

    .line 1181
    invoke-interface {p3, p2}, Lorg/apache/tools/zip/ZipEncoding;->canEncode(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_4

    .line 1182
    :cond_3
    invoke-direct {p0, p1}, Lorg/apache/tools/zip/ZipOutputStream;->getEntryEncoding(Lorg/apache/tools/zip/ZipEntry;)Lorg/apache/tools/zip/ZipEncoding;

    move-result-object p3

    invoke-interface {p3, p2}, Lorg/apache/tools/zip/ZipEncoding;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p3

    .line 1183
    new-instance v0, Lorg/apache/tools/zip/UnicodeCommentExtraField;

    .line 1184
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    .line 1185
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->position()I

    move-result p3

    sub-int/2addr v3, p3

    invoke-direct {v0, p2, v1, v2, v3}, Lorg/apache/tools/zip/UnicodeCommentExtraField;-><init>(Ljava/lang/String;[BII)V

    .line 1183
    invoke-virtual {p1, v0}, Lorg/apache/tools/zip/ZipEntry;->addExtraField(Lorg/apache/tools/zip/ZipExtraField;)V

    :cond_4
    :goto_0
    return-void
.end method

.method protected static adjustToLong(I)J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1573
    invoke-static {p0}, Lorg/apache/tools/zip/ZipUtil;->adjustToLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private checkIfNeedsZip64(Lorg/apache/tools/zip/Zip64Mode;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 661
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/tools/zip/ZipOutputStream;->isZip64Required(Lorg/apache/tools/zip/ZipEntry;Lorg/apache/tools/zip/Zip64Mode;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 663
    sget-object v1, Lorg/apache/tools/zip/Zip64Mode;->Never:Lorg/apache/tools/zip/Zip64Mode;

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 664
    :cond_0
    new-instance p1, Lorg/apache/tools/zip/Zip64RequiredException;

    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    .line 665
    invoke-static {v0}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/zip/Zip64RequiredException;->getEntryTooBigMessage(Lorg/apache/tools/zip/ZipEntry;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/tools/zip/Zip64RequiredException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return v0
.end method

.method private closeEntry(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 565
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 566
    invoke-direct {p0, p1}, Lorg/apache/tools/zip/ZipOutputStream;->rewriteSizesAndCrc(Z)V

    .line 569
    :cond_0
    iget-object p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {p1}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/tools/zip/ZipOutputStream;->writeDataDescriptor(Lorg/apache/tools/zip/ZipEntry;)V

    const/4 p1, 0x0

    .line 570
    iput-object p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    return-void
.end method

.method private createCentralFileHeader(Lorg/apache/tools/zip/ZipEntry;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1226
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->offsets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1227
    invoke-direct {p0, p1}, Lorg/apache/tools/zip/ZipOutputStream;->hasZip64Extra(Lorg/apache/tools/zip/ZipEntry;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1228
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 1229
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getSize()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    cmp-long v0, v4, v2

    if-gez v0, :cond_1

    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->zip64Mode:Lorg/apache/tools/zip/Zip64Mode;

    sget-object v1, Lorg/apache/tools/zip/Zip64Mode;->Always:Lorg/apache/tools/zip/Zip64Mode;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    move v6, v0

    if-eqz v6, :cond_3

    .line 1233
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->zip64Mode:Lorg/apache/tools/zip/Zip64Mode;

    sget-object v1, Lorg/apache/tools/zip/Zip64Mode;->Never:Lorg/apache/tools/zip/Zip64Mode;

    if-eq v0, v1, :cond_2

    goto :goto_2

    .line 1237
    :cond_2
    new-instance p1, Lorg/apache/tools/zip/Zip64RequiredException;

    const-string v0, "archive\'s size exceeds the limit of 4GByte."

    invoke-direct {p1, v0}, Lorg/apache/tools/zip/Zip64RequiredException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1242
    :cond_3
    :goto_2
    invoke-direct {p0, p1, v4, v5, v6}, Lorg/apache/tools/zip/ZipOutputStream;->handleZip64Extra(Lorg/apache/tools/zip/ZipEntry;JZ)V

    .line 1244
    invoke-direct {p0, p1}, Lorg/apache/tools/zip/ZipOutputStream;->getName(Lorg/apache/tools/zip/ZipEntry;)Ljava/nio/ByteBuffer;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/tools/zip/ZipOutputStream;->createCentralFileHeader(Lorg/apache/tools/zip/ZipEntry;Ljava/nio/ByteBuffer;JZ)[B

    move-result-object p1

    return-object p1
.end method

.method private createCentralFileHeader(Lorg/apache/tools/zip/ZipEntry;Ljava/nio/ByteBuffer;JZ)[B
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    .line 1257
    invoke-virtual/range {p1 .. p1}, Lorg/apache/tools/zip/ZipEntry;->getCentralDirectoryExtra()[B

    move-result-object v3

    .line 1260
    invoke-virtual/range {p1 .. p1}, Lorg/apache/tools/zip/ZipEntry;->getComment()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v4, ""

    .line 1265
    :cond_0
    invoke-direct/range {p0 .. p1}, Lorg/apache/tools/zip/ZipOutputStream;->getEntryEncoding(Lorg/apache/tools/zip/ZipEntry;)Lorg/apache/tools/zip/ZipEncoding;

    move-result-object v5

    invoke-interface {v5, v4}, Lorg/apache/tools/zip/ZipEncoding;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 1266
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    sub-int/2addr v5, v6

    .line 1267
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    sub-int/2addr v6, v7

    add-int/lit8 v7, v5, 0x2e

    .line 1268
    array-length v8, v3

    add-int/2addr v8, v7

    add-int/2addr v8, v6

    .line 1269
    new-array v8, v8, [B

    .line 1271
    sget-object v9, Lorg/apache/tools/zip/ZipOutputStream;->CFH_SIG:[B

    const/4 v10, 0x0

    const/4 v11, 0x4

    invoke-static {v9, v10, v8, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1275
    invoke-virtual/range {p1 .. p1}, Lorg/apache/tools/zip/ZipEntry;->getPlatform()I

    move-result v9

    const/16 v12, 0x8

    shl-int/2addr v9, v12

    iget-boolean v13, v0, Lorg/apache/tools/zip/ZipOutputStream;->hasUsedZip64:Z

    if-nez v13, :cond_1

    const/16 v13, 0x14

    goto :goto_0

    :cond_1
    const/16 v13, 0x2d

    :goto_0
    or-int/2addr v9, v13

    invoke-static {v9, v8, v11}, Lorg/apache/tools/zip/ZipShort;->putShort(I[BI)V

    .line 1278
    invoke-virtual/range {p1 .. p1}, Lorg/apache/tools/zip/ZipEntry;->getMethod()I

    move-result v9

    .line 1279
    iget-object v11, v0, Lorg/apache/tools/zip/ZipOutputStream;->zipEncoding:Lorg/apache/tools/zip/ZipEncoding;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/tools/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v13}, Lorg/apache/tools/zip/ZipEncoding;->canEncode(Ljava/lang/String;)Z

    move-result v11

    move/from16 v13, p5

    .line 1280
    invoke-direct {v0, v9, v13}, Lorg/apache/tools/zip/ZipOutputStream;->versionNeededToExtract(IZ)I

    move-result v13

    const/4 v15, 0x6

    invoke-static {v13, v8, v15}, Lorg/apache/tools/zip/ZipShort;->putShort(I[BI)V

    if-nez v11, :cond_2

    .line 1281
    iget-boolean v11, v0, Lorg/apache/tools/zip/ZipOutputStream;->fallbackToUTF8:Z

    if-eqz v11, :cond_2

    const/4 v11, 0x1

    goto :goto_1

    :cond_2
    move v11, v10

    :goto_1
    invoke-direct {v0, v9, v11}, Lorg/apache/tools/zip/ZipOutputStream;->getGeneralPurposeBits(IZ)Lorg/apache/tools/zip/GeneralPurposeBit;

    move-result-object v11

    invoke-virtual {v11, v8, v12}, Lorg/apache/tools/zip/GeneralPurposeBit;->encode([BI)V

    const/16 v11, 0xa

    .line 1284
    invoke-static {v9, v8, v11}, Lorg/apache/tools/zip/ZipShort;->putShort(I[BI)V

    .line 1288
    iget-object v9, v0, Lorg/apache/tools/zip/ZipOutputStream;->calendarInstance:Ljava/util/Calendar;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/tools/zip/ZipEntry;->getTime()J

    move-result-wide v11

    const/16 v13, 0xc

    invoke-static {v9, v11, v12, v8, v13}, Lorg/apache/tools/zip/ZipUtil;->toDosTime(Ljava/util/Calendar;J[BI)V

    .line 1293
    invoke-virtual/range {p1 .. p1}, Lorg/apache/tools/zip/ZipEntry;->getCrc()J

    move-result-wide v11

    const/16 v9, 0x10

    invoke-static {v11, v12, v8, v9}, Lorg/apache/tools/zip/ZipLong;->putLong(J[BI)V

    .line 1294
    invoke-virtual/range {p1 .. p1}, Lorg/apache/tools/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v11

    const-wide v14, 0xffffffffL

    cmp-long v11, v11, v14

    const/16 v12, 0x18

    if-gez v11, :cond_4

    .line 1295
    invoke-virtual/range {p1 .. p1}, Lorg/apache/tools/zip/ZipEntry;->getSize()J

    move-result-wide v16

    cmp-long v11, v16, v14

    if-gez v11, :cond_4

    iget-object v11, v0, Lorg/apache/tools/zip/ZipOutputStream;->zip64Mode:Lorg/apache/tools/zip/Zip64Mode;

    sget-object v13, Lorg/apache/tools/zip/Zip64Mode;->Always:Lorg/apache/tools/zip/Zip64Mode;

    if-ne v11, v13, :cond_3

    goto :goto_2

    .line 1300
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lorg/apache/tools/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v14

    const/16 v9, 0x14

    invoke-static {v14, v15, v8, v9}, Lorg/apache/tools/zip/ZipLong;->putLong(J[BI)V

    .line 1301
    invoke-virtual/range {p1 .. p1}, Lorg/apache/tools/zip/ZipEntry;->getSize()J

    move-result-wide v13

    invoke-static {v13, v14, v8, v12}, Lorg/apache/tools/zip/ZipLong;->putLong(J[BI)V

    goto :goto_3

    :cond_4
    :goto_2
    const/16 v9, 0x14

    .line 1297
    sget-object v11, Lorg/apache/tools/zip/ZipLong;->ZIP64_MAGIC:Lorg/apache/tools/zip/ZipLong;

    invoke-virtual {v11, v8, v9}, Lorg/apache/tools/zip/ZipLong;->putLong([BI)V

    .line 1298
    sget-object v9, Lorg/apache/tools/zip/ZipLong;->ZIP64_MAGIC:Lorg/apache/tools/zip/ZipLong;

    invoke-virtual {v9, v8, v12}, Lorg/apache/tools/zip/ZipLong;->putLong([BI)V

    :goto_3
    const/16 v9, 0x1c

    .line 1304
    invoke-static {v5, v8, v9}, Lorg/apache/tools/zip/ZipShort;->putShort(I[BI)V

    .line 1307
    array-length v9, v3

    const/16 v11, 0x1e

    invoke-static {v9, v8, v11}, Lorg/apache/tools/zip/ZipShort;->putShort(I[BI)V

    const/16 v9, 0x20

    .line 1309
    invoke-static {v6, v8, v9}, Lorg/apache/tools/zip/ZipShort;->putShort(I[BI)V

    .line 1312
    sget-object v9, Lorg/apache/tools/zip/ZipOutputStream;->ZERO:[B

    const/16 v11, 0x22

    const/4 v12, 0x2

    invoke-static {v9, v10, v8, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1315
    invoke-virtual/range {p1 .. p1}, Lorg/apache/tools/zip/ZipEntry;->getInternalAttributes()I

    move-result v9

    const/16 v11, 0x24

    invoke-static {v9, v8, v11}, Lorg/apache/tools/zip/ZipShort;->putShort(I[BI)V

    .line 1318
    invoke-virtual/range {p1 .. p1}, Lorg/apache/tools/zip/ZipEntry;->getExternalAttributes()J

    move-result-wide v11

    const/16 v9, 0x26

    invoke-static {v11, v12, v8, v9}, Lorg/apache/tools/zip/ZipLong;->putLong(J[BI)V

    const-wide v11, 0xffffffffL

    cmp-long v9, v1, v11

    const/16 v13, 0x2a

    if-gez v9, :cond_6

    .line 1321
    iget-object v9, v0, Lorg/apache/tools/zip/ZipOutputStream;->zip64Mode:Lorg/apache/tools/zip/Zip64Mode;

    sget-object v14, Lorg/apache/tools/zip/Zip64Mode;->Always:Lorg/apache/tools/zip/Zip64Mode;

    if-ne v9, v14, :cond_5

    goto :goto_4

    .line 1324
    :cond_5
    invoke-static {v1, v2, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    invoke-static {v1, v2, v8, v13}, Lorg/apache/tools/zip/ZipLong;->putLong(J[BI)V

    goto :goto_5

    .line 1322
    :cond_6
    :goto_4
    invoke-static {v11, v12, v8, v13}, Lorg/apache/tools/zip/ZipLong;->putLong(J[BI)V

    .line 1328
    :goto_5
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    const/16 v9, 0x2e

    invoke-static {v1, v2, v8, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1331
    array-length v1, v3

    invoke-static {v3, v10, v8, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1333
    array-length v1, v3

    add-int/2addr v7, v1

    .line 1336
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-static {v1, v2, v8, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v8
.end method

.method private createLocalFileHeader(Lorg/apache/tools/zip/ZipEntry;Ljava/nio/ByteBuffer;Z)[B
    .locals 11

    .line 1096
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getLocalFileDataExtra()[B

    move-result-object v0

    .line 1097
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v2, v1, 0x1e

    .line 1098
    array-length v3, v0

    add-int/2addr v3, v2

    .line 1099
    new-array v3, v3, [B

    .line 1101
    sget-object v4, Lorg/apache/tools/zip/ZipOutputStream;->LFH_SIG:[B

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-static {v4, v5, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1104
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getMethod()I

    move-result v4

    .line 1106
    invoke-direct {p0, p1}, Lorg/apache/tools/zip/ZipOutputStream;->hasZip64Extra(Lorg/apache/tools/zip/ZipEntry;)Z

    move-result v7

    invoke-direct {p0, v4, v7}, Lorg/apache/tools/zip/ZipOutputStream;->versionNeededToExtract(IZ)I

    move-result v7

    invoke-static {v7, v3, v6}, Lorg/apache/tools/zip/ZipShort;->putShort(I[BI)V

    if-nez p3, :cond_0

    .line 1109
    iget-boolean p3, p0, Lorg/apache/tools/zip/ZipOutputStream;->fallbackToUTF8:Z

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    move p3, v5

    .line 1110
    :goto_0
    invoke-direct {p0, v4, p3}, Lorg/apache/tools/zip/ZipOutputStream;->getGeneralPurposeBits(IZ)Lorg/apache/tools/zip/GeneralPurposeBit;

    move-result-object p3

    const/4 v7, 0x6

    .line 1111
    invoke-virtual {p3, v3, v7}, Lorg/apache/tools/zip/GeneralPurposeBit;->encode([BI)V

    const/16 p3, 0x8

    .line 1114
    invoke-static {v4, v3, p3}, Lorg/apache/tools/zip/ZipShort;->putShort(I[BI)V

    .line 1116
    iget-object v7, p0, Lorg/apache/tools/zip/ZipOutputStream;->calendarInstance:Ljava/util/Calendar;

    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getTime()J

    move-result-wide v8

    const/16 v10, 0xa

    invoke-static {v7, v8, v9, v3, v10}, Lorg/apache/tools/zip/ZipUtil;->toDosTime(Ljava/util/Calendar;J[BI)V

    const/16 v7, 0xe

    if-eq v4, p3, :cond_2

    .line 1119
    iget-object v8, p0, Lorg/apache/tools/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-eqz v8, :cond_1

    goto :goto_1

    .line 1122
    :cond_1
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getCrc()J

    move-result-wide v8

    invoke-static {v8, v9, v3, v7}, Lorg/apache/tools/zip/ZipLong;->putLong(J[BI)V

    goto :goto_2

    .line 1120
    :cond_2
    :goto_1
    sget-object v8, Lorg/apache/tools/zip/ZipOutputStream;->LZERO:[B

    invoke-static {v8, v5, v3, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1127
    :goto_2
    iget-object v7, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v7}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/apache/tools/zip/ZipOutputStream;->hasZip64Extra(Lorg/apache/tools/zip/ZipEntry;)Z

    move-result v7

    const/16 v8, 0x16

    const/16 v9, 0x12

    if-eqz v7, :cond_3

    .line 1131
    sget-object p1, Lorg/apache/tools/zip/ZipLong;->ZIP64_MAGIC:Lorg/apache/tools/zip/ZipLong;

    invoke-virtual {p1, v3, v9}, Lorg/apache/tools/zip/ZipLong;->putLong([BI)V

    .line 1132
    sget-object p1, Lorg/apache/tools/zip/ZipLong;->ZIP64_MAGIC:Lorg/apache/tools/zip/ZipLong;

    invoke-virtual {p1, v3, v8}, Lorg/apache/tools/zip/ZipLong;->putLong([BI)V

    goto :goto_4

    :cond_3
    if-eq v4, p3, :cond_5

    .line 1133
    iget-object p3, p0, Lorg/apache/tools/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-eqz p3, :cond_4

    goto :goto_3

    .line 1137
    :cond_4
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getSize()J

    move-result-wide v6

    invoke-static {v6, v7, v3, v9}, Lorg/apache/tools/zip/ZipLong;->putLong(J[BI)V

    .line 1138
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getSize()J

    move-result-wide v6

    invoke-static {v6, v7, v3, v8}, Lorg/apache/tools/zip/ZipLong;->putLong(J[BI)V

    goto :goto_4

    .line 1134
    :cond_5
    :goto_3
    sget-object p1, Lorg/apache/tools/zip/ZipOutputStream;->LZERO:[B

    invoke-static {p1, v5, v3, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1135
    invoke-static {p1, v5, v3, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_4
    const/16 p1, 0x1a

    .line 1141
    invoke-static {v1, v3, p1}, Lorg/apache/tools/zip/ZipShort;->putShort(I[BI)V

    .line 1144
    array-length p1, v0

    const/16 p3, 0x1c

    invoke-static {p1, v3, p3}, Lorg/apache/tools/zip/ZipShort;->putShort(I[BI)V

    .line 1147
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p2

    const/16 p3, 0x1e

    invoke-static {p1, p2, v3, p3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1150
    array-length p1, v0

    invoke-static {v0, v5, v3, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3
.end method

.method private deflateUntilInputIsNeeded()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1577
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1578
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipOutputStream;->deflate()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private flushDeflater()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 591
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/zip/ZipEntry;->getMethod()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 592
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    .line 593
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 594
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipOutputStream;->deflate()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getEffectiveZip64Mode(Lorg/apache/tools/zip/ZipEntry;)Lorg/apache/tools/zip/Zip64Mode;
    .locals 4

    .line 1659
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->zip64Mode:Lorg/apache/tools/zip/Zip64Mode;

    sget-object v1, Lorg/apache/tools/zip/Zip64Mode;->AsNeeded:Lorg/apache/tools/zip/Zip64Mode;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_1

    .line 1661
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getMethod()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 1662
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getSize()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1665
    :cond_0
    sget-object p1, Lorg/apache/tools/zip/Zip64Mode;->Never:Lorg/apache/tools/zip/Zip64Mode;

    return-object p1

    .line 1663
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->zip64Mode:Lorg/apache/tools/zip/Zip64Mode;

    return-object p1
.end method

.method private getEntryEncoding(Lorg/apache/tools/zip/ZipEntry;)Lorg/apache/tools/zip/ZipEncoding;
    .locals 1

    .line 1669
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->zipEncoding:Lorg/apache/tools/zip/ZipEncoding;

    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/tools/zip/ZipEncoding;->canEncode(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1670
    iget-boolean p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->fallbackToUTF8:Z

    if-eqz p1, :cond_0

    .line 1671
    sget-object p1, Lorg/apache/tools/zip/ZipEncodingHelper;->UTF8_ZIP_ENCODING:Lorg/apache/tools/zip/ZipEncoding;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->zipEncoding:Lorg/apache/tools/zip/ZipEncoding;

    :goto_0
    return-object p1
.end method

.method private getGeneralPurposeBits(IZ)Lorg/apache/tools/zip/GeneralPurposeBit;
    .locals 3

    .line 1583
    new-instance v0, Lorg/apache/tools/zip/GeneralPurposeBit;

    invoke-direct {v0}, Lorg/apache/tools/zip/GeneralPurposeBit;-><init>()V

    .line 1584
    iget-boolean v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->useUTF8Flag:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move p2, v2

    :goto_1
    invoke-virtual {v0, p2}, Lorg/apache/tools/zip/GeneralPurposeBit;->useUTF8ForNames(Z)V

    .line 1585
    invoke-direct {p0, p1}, Lorg/apache/tools/zip/ZipOutputStream;->isDeflatedToOutputStream(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1586
    invoke-virtual {v0, v2}, Lorg/apache/tools/zip/GeneralPurposeBit;->useDataDescriptor(Z)V

    :cond_2
    return-object v0
.end method

.method private getName(Lorg/apache/tools/zip/ZipEntry;)Ljava/nio/ByteBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1675
    invoke-direct {p0, p1}, Lorg/apache/tools/zip/ZipOutputStream;->getEntryEncoding(Lorg/apache/tools/zip/ZipEntry;)Lorg/apache/tools/zip/ZipEncoding;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/tools/zip/ZipEncoding;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method private getZip64Extra(Lorg/apache/tools/zip/ZipEntry;)Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;
    .locals 3

    .line 1613
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1614
    iget-boolean v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->hasUsedZip64:Z

    xor-int/2addr v2, v1

    invoke-static {v0, v2}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$502(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;Z)Z

    .line 1616
    :cond_0
    iput-boolean v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->hasUsedZip64:Z

    .line 1617
    sget-object v0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->HEADER_ID:Lorg/apache/tools/zip/ZipShort;

    .line 1619
    invoke-virtual {p1, v0}, Lorg/apache/tools/zip/ZipEntry;->getExtraField(Lorg/apache/tools/zip/ZipShort;)Lorg/apache/tools/zip/ZipExtraField;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;

    if-nez v0, :cond_1

    .line 1628
    new-instance v0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;

    invoke-direct {v0}, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;-><init>()V

    .line 1632
    :cond_1
    invoke-virtual {p1, v0}, Lorg/apache/tools/zip/ZipEntry;->addAsFirstExtraField(Lorg/apache/tools/zip/ZipExtraField;)V

    return-object v0
.end method

.method private handleSizesAndCrc(JJLorg/apache/tools/zip/Zip64Mode;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 614
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/zip/ZipEntry;->getMethod()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 619
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v1}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$300(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/zip/ZipEntry;->setSize(J)V

    .line 620
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/zip/ZipEntry;->setCompressedSize(J)V

    .line 621
    iget-object p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {p1}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Lorg/apache/tools/zip/ZipEntry;->setCrc(J)V

    .line 623
    iget-object p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {p1}, Ljava/util/zip/Deflater;->reset()V

    goto/16 :goto_0

    .line 624
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_3

    .line 625
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/zip/ZipEntry;->getCrc()J

    move-result-wide v0

    cmp-long v0, v0, p3

    const-string v1, " instead of "

    const-string v2, ": "

    if-nez v0, :cond_2

    .line 633
    iget-object p3, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {p3}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object p3

    invoke-virtual {p3}, Lorg/apache/tools/zip/ZipEntry;->getSize()J

    move-result-wide p3

    cmp-long p3, p3, p1

    if-nez p3, :cond_1

    goto/16 :goto_0

    .line 634
    :cond_1
    new-instance p3, Ljava/util/zip/ZipException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "bad size for entry "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p5, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    .line 635
    invoke-static {p5}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object p5

    invoke-virtual {p5}, Lorg/apache/tools/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    iget-object p5, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    .line 636
    invoke-static {p5}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object p5

    invoke-virtual {p5}, Lorg/apache/tools/zip/ZipEntry;->getSize()J

    move-result-wide v2

    invoke-virtual {p4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 626
    :cond_2
    new-instance p1, Ljava/util/zip/ZipException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "bad CRC checksum for entry "

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p5, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    .line 627
    invoke-static {p5}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object p5

    invoke-virtual {p5}, Lorg/apache/tools/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p5, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    .line 628
    invoke-static {p5}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object p5

    invoke-virtual {p5}, Lorg/apache/tools/zip/ZipEntry;->getCrc()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 630
    invoke-static {p3, p4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 641
    :cond_3
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/zip/ZipEntry;->setSize(J)V

    .line 642
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/zip/ZipEntry;->setCompressedSize(J)V

    .line 643
    iget-object p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {p1}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Lorg/apache/tools/zip/ZipEntry;->setCrc(J)V

    .line 646
    :goto_0
    invoke-direct {p0, p5}, Lorg/apache/tools/zip/ZipOutputStream;->checkIfNeedsZip64(Lorg/apache/tools/zip/Zip64Mode;)Z

    move-result p1

    return p1
.end method

.method private handleZip64Extra(Lorg/apache/tools/zip/ZipEntry;JZ)V
    .locals 6

    if-eqz p4, :cond_4

    .line 1351
    invoke-direct {p0, p1}, Lorg/apache/tools/zip/ZipOutputStream;->getZip64Extra(Lorg/apache/tools/zip/ZipEntry;)Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;

    move-result-object p4

    .line 1352
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 1353
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getSize()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->zip64Mode:Lorg/apache/tools/zip/Zip64Mode;

    sget-object v1, Lorg/apache/tools/zip/Zip64Mode;->Always:Lorg/apache/tools/zip/Zip64Mode;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1359
    invoke-virtual {p4, v0}, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->setCompressedSize(Lorg/apache/tools/zip/ZipEightByteInteger;)V

    .line 1360
    invoke-virtual {p4, v0}, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->setSize(Lorg/apache/tools/zip/ZipEightByteInteger;)V

    goto :goto_1

    .line 1355
    :cond_1
    :goto_0
    new-instance v0, Lorg/apache/tools/zip/ZipEightByteInteger;

    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Lorg/apache/tools/zip/ZipEightByteInteger;-><init>(J)V

    invoke-virtual {p4, v0}, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->setCompressedSize(Lorg/apache/tools/zip/ZipEightByteInteger;)V

    .line 1356
    new-instance v0, Lorg/apache/tools/zip/ZipEightByteInteger;

    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getSize()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Lorg/apache/tools/zip/ZipEightByteInteger;-><init>(J)V

    invoke-virtual {p4, v0}, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->setSize(Lorg/apache/tools/zip/ZipEightByteInteger;)V

    :goto_1
    cmp-long v0, p2, v2

    if-gez v0, :cond_2

    .line 1362
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->zip64Mode:Lorg/apache/tools/zip/Zip64Mode;

    sget-object v1, Lorg/apache/tools/zip/Zip64Mode;->Always:Lorg/apache/tools/zip/Zip64Mode;

    if-ne v0, v1, :cond_3

    .line 1363
    :cond_2
    new-instance v0, Lorg/apache/tools/zip/ZipEightByteInteger;

    invoke-direct {v0, p2, p3}, Lorg/apache/tools/zip/ZipEightByteInteger;-><init>(J)V

    invoke-virtual {p4, v0}, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->setRelativeHeaderOffset(Lorg/apache/tools/zip/ZipEightByteInteger;)V

    .line 1365
    :cond_3
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->setExtra()V

    :cond_4
    return-void
.end method

.method private hasZip64Extra(Lorg/apache/tools/zip/ZipEntry;)Z
    .locals 1

    .line 1645
    sget-object v0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->HEADER_ID:Lorg/apache/tools/zip/ZipShort;

    invoke-virtual {p1, v0}, Lorg/apache/tools/zip/ZipEntry;->getExtraField(Lorg/apache/tools/zip/ZipShort;)Lorg/apache/tools/zip/ZipExtraField;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isDeflatedToOutputStream(I)Z
    .locals 1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 1602
    iget-object p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isTooLageForZip32(Lorg/apache/tools/zip/ZipEntry;)Z
    .locals 4

    .line 675
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getSize()J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 676
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v0

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isZip64Required(Lorg/apache/tools/zip/ZipEntry;Lorg/apache/tools/zip/Zip64Mode;)Z
    .locals 1

    .line 671
    sget-object v0, Lorg/apache/tools/zip/Zip64Mode;->Always:Lorg/apache/tools/zip/Zip64Mode;

    if-eq p2, v0, :cond_1

    invoke-direct {p0, p1}, Lorg/apache/tools/zip/ZipOutputStream;->isTooLageForZip32(Lorg/apache/tools/zip/ZipEntry;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private preClose()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 574
    iget-boolean v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->finished:Z

    if-nez v0, :cond_2

    .line 578
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    if-eqz v0, :cond_1

    .line 582
    invoke-static {v0}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$200(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 583
    sget-object v0, Lorg/apache/tools/zip/ZipOutputStream;->EMPTY:[B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lorg/apache/tools/zip/ZipOutputStream;->write([BII)V

    :cond_0
    return-void

    .line 579
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No current entry to close"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 575
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream has already been finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private rewriteSizesAndCrc(Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 688
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    .line 690
    iget-object v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v3}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$400(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 691
    iget-object v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/zip/ZipEntry;->getCrc()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/tools/zip/ZipLong;->getBytes(J)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 692
    iget-object v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/tools/zip/ZipOutputStream;->hasZip64Extra(Lorg/apache/tools/zip/ZipEntry;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 696
    :cond_0
    sget-object v2, Lorg/apache/tools/zip/ZipLong;->ZIP64_MAGIC:Lorg/apache/tools/zip/ZipLong;

    invoke-virtual {v2}, Lorg/apache/tools/zip/ZipLong;->getBytes()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 697
    sget-object v2, Lorg/apache/tools/zip/ZipLong;->ZIP64_MAGIC:Lorg/apache/tools/zip/ZipLong;

    invoke-virtual {v2}, Lorg/apache/tools/zip/ZipLong;->getBytes()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    goto :goto_1

    .line 693
    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/tools/zip/ZipLong;->getBytes(J)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 694
    iget-object v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/zip/ZipEntry;->getSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/tools/zip/ZipLong;->getBytes(J)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 700
    :goto_1
    iget-object v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/tools/zip/ZipOutputStream;->hasZip64Extra(Lorg/apache/tools/zip/ZipEntry;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 702
    iget-object v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v3}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$400(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)J

    move-result-wide v3

    const-wide/16 v5, 0xc

    add-long/2addr v3, v5

    const-wide/16 v5, 0x4

    add-long/2addr v3, v5

    iget-object v7, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    .line 703
    invoke-static {v7}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/apache/tools/zip/ZipOutputStream;->getName(Lorg/apache/tools/zip/ZipEntry;)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v3, v7

    add-long/2addr v3, v5

    .line 702
    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 706
    iget-object v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/zip/ZipEntry;->getSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/tools/zip/ZipEightByteInteger;->getBytes(J)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 707
    iget-object v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/tools/zip/ZipEightByteInteger;->getBytes(J)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    if-nez p1, :cond_2

    .line 712
    iget-object p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$400(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)J

    move-result-wide v2

    const-wide/16 v4, 0xa

    sub-long/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 p1, 0xa

    .line 713
    invoke-static {p1}, Lorg/apache/tools/zip/ZipShort;->getBytes(I)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 717
    iget-object p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {p1}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object p1

    sget-object v2, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->HEADER_ID:Lorg/apache/tools/zip/ZipShort;

    invoke-virtual {p1, v2}, Lorg/apache/tools/zip/ZipEntry;->removeExtraField(Lorg/apache/tools/zip/ZipShort;)V

    .line 719
    iget-object p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {p1}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->setExtra()V

    .line 723
    iget-object p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {p1}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$500(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 724
    iput-boolean p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->hasUsedZip64:Z

    .line 728
    :cond_2
    iget-object p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    return-void
.end method

.method private setDefaults(Lorg/apache/tools/zip/ZipEntry;)V
    .locals 4

    .line 788
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getMethod()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 789
    iget v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->method:I

    invoke-virtual {p1, v0}, Lorg/apache/tools/zip/ZipEntry;->setMethod(I)V

    .line 792
    :cond_0
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getTime()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 793
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/apache/tools/zip/ZipEntry;->setTime(J)V

    :cond_1
    return-void
.end method

.method private shouldAddZip64Extra(Lorg/apache/tools/zip/ZipEntry;Lorg/apache/tools/zip/Zip64Mode;)Z
    .locals 4

    .line 847
    sget-object v0, Lorg/apache/tools/zip/Zip64Mode;->Always:Lorg/apache/tools/zip/Zip64Mode;

    if-eq p2, v0, :cond_1

    .line 848
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getSize()J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 849
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 850
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getSize()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-eqz p1, :cond_0

    sget-object p1, Lorg/apache/tools/zip/Zip64Mode;->Never:Lorg/apache/tools/zip/Zip64Mode;

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected static toDosTime(Ljava/util/Date;)Lorg/apache/tools/zip/ZipLong;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1422
    invoke-static {p0}, Lorg/apache/tools/zip/ZipUtil;->toDosTime(Ljava/util/Date;)Lorg/apache/tools/zip/ZipLong;

    move-result-object p0

    return-object p0
.end method

.method protected static toDosTime(J)[B
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1437
    invoke-static {p0, p1}, Lorg/apache/tools/zip/ZipUtil;->toDosTime(J)[B

    move-result-object p0

    return-object p0
.end method

.method private validateSizeInformation(Lorg/apache/tools/zip/Zip64Mode;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 808
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/zip/ZipEntry;->getMethod()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_2

    .line 809
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/zip/ZipEntry;->getSize()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 814
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/zip/ZipEntry;->getCrc()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 818
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v1}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/zip/ZipEntry;->getSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/zip/ZipEntry;->setCompressedSize(J)V

    goto :goto_0

    .line 815
    :cond_0
    new-instance p1, Ljava/util/zip/ZipException;

    const-string v0, "crc checksum is required for STORED method when not writing to a file"

    invoke-direct {p1, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 810
    :cond_1
    new-instance p1, Ljava/util/zip/ZipException;

    const-string v0, "uncompressed size is required for STORED method when not writing to a file"

    invoke-direct {p1, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 821
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/zip/ZipEntry;->getSize()J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    .line 822
    invoke-static {v0}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_4

    :cond_3
    sget-object v0, Lorg/apache/tools/zip/Zip64Mode;->Never:Lorg/apache/tools/zip/Zip64Mode;

    if-eq p1, v0, :cond_5

    :cond_4
    return-void

    .line 824
    :cond_5
    new-instance p1, Lorg/apache/tools/zip/Zip64RequiredException;

    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    .line 825
    invoke-static {v0}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/zip/Zip64RequiredException;->getEntryTooBigMessage(Lorg/apache/tools/zip/ZipEntry;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/tools/zip/Zip64RequiredException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private versionNeededToExtract(IZ)I
    .locals 0

    if-eqz p2, :cond_0

    const/16 p1, 0x2d

    return p1

    .line 1597
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/tools/zip/ZipOutputStream;->isDeflatedToOutputStream(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x14

    goto :goto_0

    :cond_1
    const/16 p1, 0xa

    :goto_0
    return p1
.end method

.method private writeCentralDirectoryInChunks()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 526
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const v1, 0x11170

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 528
    iget-object v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    move v3, v2

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/tools/zip/ZipEntry;

    .line 529
    invoke-direct {p0, v4}, Lorg/apache/tools/zip/ZipOutputStream;->createCentralFileHeader(Lorg/apache/tools/zip/ZipEntry;)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x3e8

    if-le v3, v4, :cond_0

    .line 531
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/tools/zip/ZipOutputStream;->writeCounted([B)V

    .line 532
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_0

    .line 536
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->writeCounted([B)V

    return-void
.end method

.method private writeCounted([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 954
    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/tools/zip/ZipOutputStream;->writeCounted([BII)V

    return-void
.end method

.method private writeCounted([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 958
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([BII)V

    .line 959
    iget-wide p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    return-void
.end method

.method private writeDeflated([BII)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-lez p3, :cond_2

    .line 971
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 972
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    int-to-long v1, p3

    invoke-static {v0, v1, v2}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$314(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;J)J

    const/16 v0, 0x2000

    if-gt p3, v0, :cond_0

    .line 974
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 975
    invoke-direct {p0}, Lorg/apache/tools/zip/ZipOutputStream;->deflateUntilInputIsNeeded()V

    goto :goto_1

    .line 977
    :cond_0
    div-int/lit16 v1, p3, 0x2000

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 979
    iget-object v3, p0, Lorg/apache/tools/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    mul-int/lit16 v4, v2, 0x2000

    add-int/2addr v4, p2

    invoke-virtual {v3, p1, v4, v0}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 981
    invoke-direct {p0}, Lorg/apache/tools/zip/ZipOutputStream;->deflateUntilInputIsNeeded()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    mul-int/2addr v1, v0

    if-ge v1, p3, :cond_2

    .line 985
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 986
    invoke-direct {p0}, Lorg/apache/tools/zip/ZipOutputStream;->deflateUntilInputIsNeeded()V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public canWriteEntryData(Lorg/apache/tools/zip/ZipEntry;)Z
    .locals 0

    .line 908
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

    .line 1003
    iget-boolean v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->finished:Z

    if-nez v0, :cond_0

    .line 1004
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipOutputStream;->finish()V

    .line 1006
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipOutputStream;->destroy()V

    return-void
.end method

.method public closeEntry()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 549
    invoke-direct {p0}, Lorg/apache/tools/zip/ZipOutputStream;->preClose()V

    .line 551
    invoke-direct {p0}, Lorg/apache/tools/zip/ZipOutputStream;->flushDeflater()V

    .line 553
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->getEffectiveZip64Mode(Lorg/apache/tools/zip/ZipEntry;)Lorg/apache/tools/zip/Zip64Mode;

    move-result-object v6

    .line 554
    iget-wide v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    iget-object v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$100(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)J

    move-result-wide v2

    sub-long v2, v0, v2

    .line 555
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    .line 556
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    move-object v1, p0

    .line 559
    invoke-direct/range {v1 .. v6}, Lorg/apache/tools/zip/ZipOutputStream;->handleSizesAndCrc(JJLorg/apache/tools/zip/Zip64Mode;)Z

    move-result v0

    .line 561
    invoke-direct {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->closeEntry(Z)V

    return-void
.end method

.method protected final deflate()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1065
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    iget-object v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->buf:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v0

    if-lez v0, :cond_0

    .line 1067
    iget-object v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->buf:[B

    invoke-direct {p0, v1, v3, v0}, Lorg/apache/tools/zip/ZipOutputStream;->writeCounted([BII)V

    :cond_0
    return-void
.end method

.method destroy()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1688
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 1689
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 1691
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    .line 1692
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_1
    return-void
.end method

.method public finish()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 505
    iget-boolean v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->finished:Z

    if-nez v0, :cond_1

    .line 509
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    if-eqz v0, :cond_0

    .line 510
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipOutputStream;->closeEntry()V

    .line 513
    :cond_0
    iget-wide v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    iput-wide v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->cdOffset:J

    .line 514
    invoke-direct {p0}, Lorg/apache/tools/zip/ZipOutputStream;->writeCentralDirectoryInChunks()V

    .line 515
    iget-wide v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    iget-wide v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->cdOffset:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->cdLength:J

    .line 516
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipOutputStream;->writeZip64CentralDirectory()V

    .line 517
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipOutputStream;->writeCentralDirectoryEnd()V

    .line 518
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->offsets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 519
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 520
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    const/4 v0, 0x1

    .line 521
    iput-boolean v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->finished:Z

    return-void

    .line 506
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "This archive has already been finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1017
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 1018
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    :cond_0
    return-void
.end method

.method protected getBytes(Ljava/lang/String;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 1452
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->encoding:Ljava/lang/String;

    .line 1453
    invoke-static {v0}, Lorg/apache/tools/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lorg/apache/tools/zip/ZipEncoding;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/tools/zip/ZipEncoding;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 1454
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    new-array v1, v0, [B

    .line 1455
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p1

    const/4 v3, 0x0

    invoke-static {v2, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 1459
    new-instance v0, Ljava/util/zip/ZipException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to encode name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 410
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public isSeekable()Z
    .locals 1

    .line 381
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public putNextEntry(Lorg/apache/tools/zip/ZipEntry;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 739
    iget-boolean v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->finished:Z

    if-nez v0, :cond_4

    .line 743
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    if-eqz v0, :cond_0

    .line 744
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipOutputStream;->closeEntry()V

    .line 747
    :cond_0
    new-instance v0, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;-><init>(Lorg/apache/tools/zip/ZipEntry;Lorg/apache/tools/zip/ZipOutputStream$1;)V

    iput-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    .line 748
    iget-object p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->entries:Ljava/util/List;

    invoke-static {v0}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 750
    iget-object p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {p1}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/tools/zip/ZipOutputStream;->setDefaults(Lorg/apache/tools/zip/ZipEntry;)V

    .line 752
    iget-object p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {p1}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/tools/zip/ZipOutputStream;->getEffectiveZip64Mode(Lorg/apache/tools/zip/ZipEntry;)Lorg/apache/tools/zip/Zip64Mode;

    move-result-object p1

    .line 753
    invoke-direct {p0, p1}, Lorg/apache/tools/zip/ZipOutputStream;->validateSizeInformation(Lorg/apache/tools/zip/Zip64Mode;)V

    .line 755
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/tools/zip/ZipOutputStream;->shouldAddZip64Extra(Lorg/apache/tools/zip/ZipEntry;Lorg/apache/tools/zip/Zip64Mode;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 757
    iget-object p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {p1}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/tools/zip/ZipOutputStream;->getZip64Extra(Lorg/apache/tools/zip/ZipEntry;)Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;

    move-result-object p1

    .line 761
    sget-object v0, Lorg/apache/tools/zip/ZipEightByteInteger;->ZERO:Lorg/apache/tools/zip/ZipEightByteInteger;

    .line 762
    sget-object v1, Lorg/apache/tools/zip/ZipEightByteInteger;->ZERO:Lorg/apache/tools/zip/ZipEightByteInteger;

    .line 763
    iget-object v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/zip/ZipEntry;->getMethod()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    .line 764
    invoke-static {v2}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/zip/ZipEntry;->getSize()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 766
    new-instance v0, Lorg/apache/tools/zip/ZipEightByteInteger;

    iget-object v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v1}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/zip/ZipEntry;->getSize()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/zip/ZipEightByteInteger;-><init>(J)V

    move-object v1, v0

    .line 769
    :cond_1
    invoke-virtual {p1, v0}, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->setSize(Lorg/apache/tools/zip/ZipEightByteInteger;)V

    .line 770
    invoke-virtual {p1, v1}, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->setCompressedSize(Lorg/apache/tools/zip/ZipEightByteInteger;)V

    .line 771
    iget-object p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {p1}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->setExtra()V

    .line 774
    :cond_2
    iget-object p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {p1}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getMethod()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_3

    iget-boolean p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->hasCompressionLevelChanged:Z

    if-eqz p1, :cond_3

    .line 775
    iget-object p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    iget v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->level:I

    invoke-virtual {p1, v0}, Ljava/util/zip/Deflater;->setLevel(I)V

    const/4 p1, 0x0

    .line 776
    iput-boolean p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->hasCompressionLevelChanged:Z

    .line 778
    :cond_3
    iget-object p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {p1}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/tools/zip/ZipOutputStream;->writeLocalFileHeader(Lorg/apache/tools/zip/ZipEntry;)V

    return-void

    .line 740
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Stream has already been finished"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    .line 860
    iput-object p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->comment:Ljava/lang/String;

    return-void
.end method

.method public setCreateUnicodeExtraFields(Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;)V
    .locals 0

    .line 433
    iput-object p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->createUnicodeExtraFields:Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 1

    .line 395
    iput-object p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->encoding:Ljava/lang/String;

    .line 396
    invoke-static {p1}, Lorg/apache/tools/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lorg/apache/tools/zip/ZipEncoding;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->zipEncoding:Lorg/apache/tools/zip/ZipEncoding;

    .line 397
    iget-boolean v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->useUTF8Flag:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/apache/tools/zip/ZipEncodingHelper;->isUTF8(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 398
    iput-boolean p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->useUTF8Flag:Z

    :cond_0
    return-void
.end method

.method public setFallbackToUTF8(Z)V
    .locals 0

    .line 445
    iput-boolean p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->fallbackToUTF8:Z

    return-void
.end method

.method public setLevel(I)V
    .locals 3

    const/4 v0, -0x1

    if-lt p1, v0, :cond_1

    const/16 v0, 0x9

    if-gt p1, v0, :cond_1

    .line 879
    iget v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->level:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 882
    iput-boolean v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->hasCompressionLevelChanged:Z

    .line 883
    iput p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->level:I

    return-void

    .line 876
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid compression level: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMethod(I)V
    .locals 0

    .line 895
    iput p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->method:I

    return-void
.end method

.method public setUseLanguageEncodingFlag(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 422
    iget-object p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->encoding:Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/tools/zip/ZipEncodingHelper;->isUTF8(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->useUTF8Flag:Z

    return-void
.end method

.method public setUseZip64(Lorg/apache/tools/zip/Zip64Mode;)V
    .locals 0

    .line 494
    iput-object p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->zip64Mode:Lorg/apache/tools/zip/Zip64Mode;

    return-void
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 920
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->oneByte:[B

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 p1, 0x1

    .line 921
    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/tools/zip/ZipOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 934
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    if-eqz v0, :cond_1

    .line 937
    invoke-static {v0}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/zip/ZipUtil;->checkRequestedFeatures(Lorg/apache/tools/zip/ZipEntry;)V

    .line 938
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$202(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;Z)Z

    .line 939
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/zip/ZipEntry;->getMethod()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 940
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/tools/zip/ZipOutputStream;->writeDeflated([BII)V

    goto :goto_0

    .line 942
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/tools/zip/ZipOutputStream;->writeCounted([BII)V

    .line 944
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    return-void

    .line 935
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No current entry"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected writeCentralDirectoryEnd()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1378
    sget-object v0, Lorg/apache/tools/zip/ZipOutputStream;->EOCD_SIG:[B

    invoke-direct {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->writeCounted([B)V

    .line 1381
    sget-object v0, Lorg/apache/tools/zip/ZipOutputStream;->ZERO:[B

    invoke-direct {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->writeCounted([B)V

    .line 1382
    invoke-direct {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->writeCounted([B)V

    .line 1385
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const v1, 0xffff

    if-le v0, v1, :cond_1

    .line 1386
    iget-object v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->zip64Mode:Lorg/apache/tools/zip/Zip64Mode;

    sget-object v3, Lorg/apache/tools/zip/Zip64Mode;->Never:Lorg/apache/tools/zip/Zip64Mode;

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 1388
    :cond_0
    new-instance v0, Lorg/apache/tools/zip/Zip64RequiredException;

    const-string v1, "archive contains more than 65535 entries."

    invoke-direct {v0, v1}, Lorg/apache/tools/zip/Zip64RequiredException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1391
    :cond_1
    :goto_0
    iget-wide v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->cdOffset:J

    const-wide v4, 0xffffffffL

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    iget-object v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->zip64Mode:Lorg/apache/tools/zip/Zip64Mode;

    sget-object v3, Lorg/apache/tools/zip/Zip64Mode;->Never:Lorg/apache/tools/zip/Zip64Mode;

    if-eq v2, v3, :cond_2

    goto :goto_1

    .line 1392
    :cond_2
    new-instance v0, Lorg/apache/tools/zip/Zip64RequiredException;

    const-string v1, "archive\'s size exceeds the limit of 4GByte."

    invoke-direct {v0, v1}, Lorg/apache/tools/zip/Zip64RequiredException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1396
    :cond_3
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0}, Lorg/apache/tools/zip/ZipShort;->getBytes(I)[B

    move-result-object v0

    .line 1398
    invoke-direct {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->writeCounted([B)V

    .line 1399
    invoke-direct {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->writeCounted([B)V

    .line 1402
    iget-wide v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->cdLength:J

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/tools/zip/ZipLong;->getBytes(J)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->writeCounted([B)V

    .line 1403
    iget-wide v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->cdOffset:J

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/tools/zip/ZipLong;->getBytes(J)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->writeCounted([B)V

    .line 1406
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->zipEncoding:Lorg/apache/tools/zip/ZipEncoding;

    iget-object v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->comment:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/apache/tools/zip/ZipEncoding;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1407
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1408
    invoke-static {v1}, Lorg/apache/tools/zip/ZipShort;->getBytes(I)[B

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/tools/zip/ZipOutputStream;->writeCounted([B)V

    .line 1409
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-direct {p0, v2, v0, v1}, Lorg/apache/tools/zip/ZipOutputStream;->writeCounted([BII)V

    return-void
.end method

.method protected writeCentralFileHeader(Lorg/apache/tools/zip/ZipEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1221
    invoke-direct {p0, p1}, Lorg/apache/tools/zip/ZipOutputStream;->createCentralFileHeader(Lorg/apache/tools/zip/ZipEntry;)[B

    move-result-object p1

    .line 1222
    invoke-direct {p0, p1}, Lorg/apache/tools/zip/ZipOutputStream;->writeCounted([B)V

    return-void
.end method

.method protected writeDataDescriptor(Lorg/apache/tools/zip/ZipEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1197
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getMethod()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1200
    :cond_0
    sget-object v0, Lorg/apache/tools/zip/ZipOutputStream;->DD_SIG:[B

    invoke-direct {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->writeCounted([B)V

    .line 1201
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getCrc()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/tools/zip/ZipLong;->getBytes(J)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->writeCounted([B)V

    .line 1202
    invoke-direct {p0, p1}, Lorg/apache/tools/zip/ZipOutputStream;->hasZip64Extra(Lorg/apache/tools/zip/ZipEntry;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1203
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/tools/zip/ZipLong;->getBytes(J)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->writeCounted([B)V

    .line 1204
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/tools/zip/ZipLong;->getBytes(J)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/tools/zip/ZipOutputStream;->writeCounted([B)V

    goto :goto_0

    .line 1206
    :cond_1
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/tools/zip/ZipEightByteInteger;->getBytes(J)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->writeCounted([B)V

    .line 1207
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/tools/zip/ZipEightByteInteger;->getBytes(J)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/tools/zip/ZipOutputStream;->writeCounted([B)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected writeLocalFileHeader(Lorg/apache/tools/zip/ZipEntry;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1080
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->zipEncoding:Lorg/apache/tools/zip/ZipEncoding;

    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/tools/zip/ZipEncoding;->canEncode(Ljava/lang/String;)Z

    move-result v0

    .line 1081
    invoke-direct {p0, p1}, Lorg/apache/tools/zip/ZipOutputStream;->getName(Lorg/apache/tools/zip/ZipEntry;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1083
    iget-object v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->createUnicodeExtraFields:Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;

    sget-object v3, Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;->NEVER:Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;

    if-eq v2, v3, :cond_0

    .line 1084
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/tools/zip/ZipOutputStream;->addUnicodeExtraFields(Lorg/apache/tools/zip/ZipEntry;ZLjava/nio/ByteBuffer;)V

    .line 1087
    :cond_0
    invoke-direct {p0, p1, v1, v0}, Lorg/apache/tools/zip/ZipOutputStream;->createLocalFileHeader(Lorg/apache/tools/zip/ZipEntry;Ljava/nio/ByteBuffer;Z)[B

    move-result-object v0

    .line 1088
    iget-wide v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    .line 1089
    iget-object v3, p0, Lorg/apache/tools/zip/ZipOutputStream;->offsets:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1090
    iget-object p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    const-wide/16 v3, 0xe

    add-long/2addr v1, v3

    invoke-static {p1, v1, v2}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$402(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;J)J

    .line 1091
    invoke-direct {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->writeCounted([B)V

    .line 1092
    iget-object p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;

    iget-wide v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    invoke-static {p1, v0, v1}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->access$102(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;J)J

    return-void
.end method

.method protected final writeOut([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1540
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([BII)V

    return-void
.end method

.method protected final writeOut([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1555
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 1556
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    goto :goto_0

    .line 1558
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    :goto_0
    return-void
.end method

.method protected writeZip64CentralDirectory()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1470
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->zip64Mode:Lorg/apache/tools/zip/Zip64Mode;

    sget-object v1, Lorg/apache/tools/zip/Zip64Mode;->Never:Lorg/apache/tools/zip/Zip64Mode;

    if-ne v0, v1, :cond_0

    return-void

    .line 1474
    :cond_0
    iget-boolean v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->hasUsedZip64:Z

    if-nez v0, :cond_2

    iget-wide v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->cdOffset:J

    const-wide v2, 0xffffffffL

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iget-wide v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->cdLength:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entries:Ljava/util/List;

    .line 1476
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const v1, 0xffff

    if-lt v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 1478
    iput-boolean v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->hasUsedZip64:Z

    .line 1481
    :cond_2
    iget-boolean v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->hasUsedZip64:Z

    if-nez v0, :cond_3

    return-void

    .line 1485
    :cond_3
    iget-wide v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    .line 1487
    sget-object v2, Lorg/apache/tools/zip/ZipOutputStream;->ZIP64_EOCD_SIG:[B

    invoke-virtual {p0, v2}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    const-wide/16 v2, 0x2c

    .line 1491
    invoke-static {v2, v3}, Lorg/apache/tools/zip/ZipEightByteInteger;->getBytes(J)[B

    move-result-object v2

    .line 1490
    invoke-virtual {p0, v2}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    const/16 v2, 0x2d

    .line 1502
    invoke-static {v2}, Lorg/apache/tools/zip/ZipShort;->getBytes(I)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 1503
    invoke-static {v2}, Lorg/apache/tools/zip/ZipShort;->getBytes(I)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 1506
    sget-object v2, Lorg/apache/tools/zip/ZipOutputStream;->LZERO:[B

    invoke-virtual {p0, v2}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 1507
    invoke-virtual {p0, v2}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 1510
    iget-object v3, p0, Lorg/apache/tools/zip/ZipOutputStream;->entries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Lorg/apache/tools/zip/ZipEightByteInteger;->getBytes(J)[B

    move-result-object v3

    .line 1511
    invoke-virtual {p0, v3}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 1512
    invoke-virtual {p0, v3}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 1515
    iget-wide v3, p0, Lorg/apache/tools/zip/ZipOutputStream;->cdLength:J

    invoke-static {v3, v4}, Lorg/apache/tools/zip/ZipEightByteInteger;->getBytes(J)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 1516
    iget-wide v3, p0, Lorg/apache/tools/zip/ZipOutputStream;->cdOffset:J

    invoke-static {v3, v4}, Lorg/apache/tools/zip/ZipEightByteInteger;->getBytes(J)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 1521
    sget-object v3, Lorg/apache/tools/zip/ZipOutputStream;->ZIP64_EOCD_LOC_SIG:[B

    invoke-virtual {p0, v3}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 1524
    invoke-virtual {p0, v2}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 1526
    invoke-static {v0, v1}, Lorg/apache/tools/zip/ZipEightByteInteger;->getBytes(J)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 1528
    sget-object v0, Lorg/apache/tools/zip/ZipOutputStream;->ONE:[B

    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    return-void
.end method
