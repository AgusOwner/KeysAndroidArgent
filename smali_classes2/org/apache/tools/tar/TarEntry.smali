.class public Lorg/apache/tools/tar/TarEntry;
.super Ljava/lang/Object;
.source "TarEntry.java"

# interfaces
.implements Lorg/apache/tools/tar/TarConstants;


# static fields
.field public static final DEFAULT_DIR_MODE:I = 0x41ed

.field public static final DEFAULT_FILE_MODE:I = 0x81a4

.field public static final MAX_NAMELEN:I = 0x1f

.field public static final MILLIS_PER_SECOND:I = 0x3e8


# instance fields
.field private devMajor:I

.field private devMinor:I

.field private file:Ljava/io/File;

.field private groupId:J

.field private groupName:Ljava/lang/String;

.field private isExtended:Z

.field private linkFlag:B

.field private linkName:Ljava/lang/String;

.field private magic:Ljava/lang/String;

.field private modTime:J

.field private mode:I

.field private name:Ljava/lang/String;

.field private realSize:J

.field private size:J

.field private userId:J

.field private userName:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 4

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ustar\u0000"

    .line 179
    iput-object v0, p0, Lorg/apache/tools/tar/TarEntry;->magic:Ljava/lang/String;

    const-string v0, "00"

    .line 180
    iput-object v0, p0, Lorg/apache/tools/tar/TarEntry;->version:Ljava/lang/String;

    const-string v0, ""

    .line 181
    iput-object v0, p0, Lorg/apache/tools/tar/TarEntry;->name:Ljava/lang/String;

    .line 182
    iput-object v0, p0, Lorg/apache/tools/tar/TarEntry;->linkName:Ljava/lang/String;

    const-string v1, "user.name"

    .line 184
    invoke-static {v1, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 186
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x1f

    if-le v2, v3, :cond_0

    const/4 v2, 0x0

    .line 187
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-wide/16 v2, 0x0

    .line 190
    iput-wide v2, p0, Lorg/apache/tools/tar/TarEntry;->userId:J

    .line 191
    iput-wide v2, p0, Lorg/apache/tools/tar/TarEntry;->groupId:J

    .line 192
    iput-object v1, p0, Lorg/apache/tools/tar/TarEntry;->userName:Ljava/lang/String;

    .line 193
    iput-object v0, p0, Lorg/apache/tools/tar/TarEntry;->groupName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 194
    iput-object v0, p0, Lorg/apache/tools/tar/TarEntry;->file:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .line 258
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/tools/tar/TarEntry;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 3

    .line 269
    invoke-direct {p0}, Lorg/apache/tools/tar/TarEntry;-><init>()V

    const/4 v0, 0x0

    .line 271
    invoke-static {p2, v0}, Lorg/apache/tools/tar/TarEntry;->normalizeFileName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    .line 272
    iput-object p1, p0, Lorg/apache/tools/tar/TarEntry;->file:Ljava/io/File;

    const-string v1, ""

    .line 274
    iput-object v1, p0, Lorg/apache/tools/tar/TarEntry;->linkName:Ljava/lang/String;

    .line 276
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x41ed

    .line 277
    iput v1, p0, Lorg/apache/tools/tar/TarEntry;->mode:I

    const/16 v1, 0x35

    .line 278
    iput-byte v1, p0, Lorg/apache/tools/tar/TarEntry;->linkFlag:B

    .line 280
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    .line 281
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 284
    :cond_0
    iput-object p2, p0, Lorg/apache/tools/tar/TarEntry;->name:Ljava/lang/String;

    goto :goto_1

    .line 282
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/tools/tar/TarEntry;->name:Ljava/lang/String;

    :goto_1
    const-wide/16 v1, 0x0

    .line 286
    iput-wide v1, p0, Lorg/apache/tools/tar/TarEntry;->size:J

    goto :goto_2

    :cond_2
    const v1, 0x81a4

    .line 288
    iput v1, p0, Lorg/apache/tools/tar/TarEntry;->mode:I

    const/16 v1, 0x30

    .line 289
    iput-byte v1, p0, Lorg/apache/tools/tar/TarEntry;->linkFlag:B

    .line 290
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/tools/tar/TarEntry;->size:J

    .line 291
    iput-object p2, p0, Lorg/apache/tools/tar/TarEntry;->name:Ljava/lang/String;

    .line 294
    :goto_2
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide p1

    const-wide/16 v1, 0x3e8

    div-long/2addr p1, v1

    iput-wide p1, p0, Lorg/apache/tools/tar/TarEntry;->modTime:J

    .line 295
    iput v0, p0, Lorg/apache/tools/tar/TarEntry;->devMajor:I

    .line 296
    iput v0, p0, Lorg/apache/tools/tar/TarEntry;->devMinor:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 204
    invoke-direct {p0, p1, v0}, Lorg/apache/tools/tar/TarEntry;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;B)V
    .locals 0

    .line 242
    invoke-direct {p0, p1}, Lorg/apache/tools/tar/TarEntry;-><init>(Ljava/lang/String;)V

    .line 243
    iput-byte p2, p0, Lorg/apache/tools/tar/TarEntry;->linkFlag:B

    const/16 p1, 0x4c

    if-ne p2, p1, :cond_0

    const-string p1, "ustar  "

    .line 245
    iput-object p1, p0, Lorg/apache/tools/tar/TarEntry;->magic:Ljava/lang/String;

    const-string p1, " \u0000"

    .line 246
    iput-object p1, p0, Lorg/apache/tools/tar/TarEntry;->version:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    .line 216
    invoke-direct {p0}, Lorg/apache/tools/tar/TarEntry;-><init>()V

    .line 218
    invoke-static {p1, p2}, Lorg/apache/tools/tar/TarEntry;->normalizeFileName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const-string p2, "/"

    .line 219
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x0

    .line 221
    iput v0, p0, Lorg/apache/tools/tar/TarEntry;->devMajor:I

    .line 222
    iput v0, p0, Lorg/apache/tools/tar/TarEntry;->devMinor:I

    .line 223
    iput-object p1, p0, Lorg/apache/tools/tar/TarEntry;->name:Ljava/lang/String;

    if-eqz p2, :cond_0

    const/16 p1, 0x41ed

    goto :goto_0

    :cond_0
    const p1, 0x81a4

    .line 224
    :goto_0
    iput p1, p0, Lorg/apache/tools/tar/TarEntry;->mode:I

    if-eqz p2, :cond_1

    const/16 p1, 0x35

    goto :goto_1

    :cond_1
    const/16 p1, 0x30

    .line 225
    :goto_1
    iput-byte p1, p0, Lorg/apache/tools/tar/TarEntry;->linkFlag:B

    const-wide/16 p1, 0x0

    .line 226
    iput-wide p1, p0, Lorg/apache/tools/tar/TarEntry;->userId:J

    .line 227
    iput-wide p1, p0, Lorg/apache/tools/tar/TarEntry;->groupId:J

    .line 228
    iput-wide p1, p0, Lorg/apache/tools/tar/TarEntry;->size:J

    .line 229
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    iput-wide p1, p0, Lorg/apache/tools/tar/TarEntry;->modTime:J

    const-string p1, ""

    .line 230
    iput-object p1, p0, Lorg/apache/tools/tar/TarEntry;->linkName:Ljava/lang/String;

    .line 231
    iput-object p1, p0, Lorg/apache/tools/tar/TarEntry;->userName:Ljava/lang/String;

    .line 232
    iput-object p1, p0, Lorg/apache/tools/tar/TarEntry;->groupName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 307
    invoke-direct {p0}, Lorg/apache/tools/tar/TarEntry;-><init>()V

    .line 308
    invoke-virtual {p0, p1}, Lorg/apache/tools/tar/TarEntry;->parseTarHeader([B)V

    return-void
.end method

.method public constructor <init>([BLorg/apache/tools/zip/ZipEncoding;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 322
    invoke-direct {p0}, Lorg/apache/tools/tar/TarEntry;-><init>()V

    .line 323
    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/tar/TarEntry;->parseTarHeader([BLorg/apache/tools/zip/ZipEncoding;)V

    return-void
.end method

.method private evaluateType([B)I
    .locals 3

    const-string v0, "ustar  "

    const/16 v1, 0x101

    const/4 v2, 0x6

    .line 1078
    invoke-static {v0, p1, v1, v2}, Lorg/apache/tools/tar/TarEntry;->matchAsciiBuffer(Ljava/lang/String;[BII)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    const-string v0, "ustar\u0000"

    .line 1081
    invoke-static {v0, p1, v1, v2}, Lorg/apache/tools/tar/TarEntry;->matchAsciiBuffer(Ljava/lang/String;[BII)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private static isEqual([BII[BIIZ)Z
    .locals 5

    if-ge p2, p5, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    move v0, p5

    :goto_0
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_2

    add-int v3, p1, v2

    .line 1121
    aget-byte v3, p0, v3

    add-int v4, p4, v2

    aget-byte v4, p3, v4

    if-eq v3, v4, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    if-ne p2, p5, :cond_3

    return v0

    :cond_3
    if-eqz p6, :cond_8

    if-le p2, p5, :cond_5

    :goto_2
    if-ge p5, p2, :cond_7

    add-int p3, p1, p5

    .line 1131
    aget-byte p3, p0, p3

    if-eqz p3, :cond_4

    return v1

    :cond_4
    add-int/lit8 p5, p5, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    if-ge p2, p5, :cond_7

    add-int p0, p4, p2

    .line 1137
    aget-byte p0, p3, p0

    if-eqz p0, :cond_6

    return v1

    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_7
    return v0

    :cond_8
    return v1
.end method

.method private static matchAsciiBuffer(Ljava/lang/String;[BII)Z
    .locals 8

    .line 1098
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const/4 v2, 0x0

    .line 1099
    array-length v3, v1

    const/4 v7, 0x0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v1 .. v7}, Lorg/apache/tools/tar/TarEntry;->isEqual([BII[BIIZ)Z

    move-result p0

    return p0
.end method

.method private static normalizeFileName(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5

    const-string v0, "os.name"

    .line 1034
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    const-string v2, "windows"

    .line 1041
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/16 v3, 0x3a

    if-eqz v2, :cond_2

    .line 1042
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_3

    const/4 v0, 0x0

    .line 1043
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1044
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v3, :cond_3

    const/16 v3, 0x61

    if-lt v0, v3, :cond_0

    const/16 v3, 0x7a

    if-le v0, v3, :cond_1

    :cond_0
    const/16 v3, 0x41

    if-lt v0, v3, :cond_3

    const/16 v3, 0x5a

    if-gt v0, v3, :cond_3

    .line 1049
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string v2, "netware"

    .line 1052
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1053
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    add-int/2addr v0, v1

    .line 1055
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 1060
    :cond_3
    :goto_0
    sget-char v0, Ljava/io/File;->separatorChar:C

    const/16 v2, 0x2f

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    :goto_1
    if-nez p1, :cond_4

    const-string v0, "/"

    .line 1065
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1066
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_4
    return-object p0
.end method

.method private parseTarHeader([BLorg/apache/tools/zip/ZipEncoding;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x64

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 964
    invoke-static {p1, v1, v0}, Lorg/apache/tools/tar/TarUtils;->parseName([BII)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 965
    :cond_0
    invoke-static {p1, v1, v0, p2}, Lorg/apache/tools/tar/TarUtils;->parseName([BIILorg/apache/tools/zip/ZipEncoding;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lorg/apache/tools/tar/TarEntry;->name:Ljava/lang/String;

    const/16 v1, 0x8

    .line 967
    invoke-static {p1, v0, v1}, Lorg/apache/tools/tar/TarUtils;->parseOctalOrBinary([BII)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Lorg/apache/tools/tar/TarEntry;->mode:I

    const/16 v2, 0x6c

    .line 969
    invoke-static {p1, v2, v1}, Lorg/apache/tools/tar/TarUtils;->parseOctalOrBinary([BII)J

    move-result-wide v2

    long-to-int v2, v2

    int-to-long v2, v2

    iput-wide v2, p0, Lorg/apache/tools/tar/TarEntry;->userId:J

    const/16 v2, 0x74

    .line 971
    invoke-static {p1, v2, v1}, Lorg/apache/tools/tar/TarUtils;->parseOctalOrBinary([BII)J

    move-result-wide v2

    long-to-int v2, v2

    int-to-long v2, v2

    iput-wide v2, p0, Lorg/apache/tools/tar/TarEntry;->groupId:J

    const/16 v2, 0x7c

    const/16 v3, 0xc

    .line 973
    invoke-static {p1, v2, v3}, Lorg/apache/tools/tar/TarUtils;->parseOctalOrBinary([BII)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/apache/tools/tar/TarEntry;->size:J

    const/16 v2, 0x88

    .line 975
    invoke-static {p1, v2, v3}, Lorg/apache/tools/tar/TarUtils;->parseOctalOrBinary([BII)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/apache/tools/tar/TarEntry;->modTime:J

    const/16 v2, 0x9c

    .line 978
    aget-byte v2, p1, v2

    iput-byte v2, p0, Lorg/apache/tools/tar/TarEntry;->linkFlag:B

    const/16 v2, 0x9d

    if-eqz p3, :cond_1

    .line 979
    invoke-static {p1, v2, v0}, Lorg/apache/tools/tar/TarUtils;->parseName([BII)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 980
    :cond_1
    invoke-static {p1, v2, v0, p2}, Lorg/apache/tools/tar/TarUtils;->parseName([BIILorg/apache/tools/zip/ZipEncoding;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lorg/apache/tools/tar/TarEntry;->linkName:Ljava/lang/String;

    const/16 v0, 0x101

    const/4 v2, 0x6

    .line 982
    invoke-static {p1, v0, v2}, Lorg/apache/tools/tar/TarUtils;->parseName([BII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/tar/TarEntry;->magic:Ljava/lang/String;

    const/16 v0, 0x107

    const/4 v2, 0x2

    .line 984
    invoke-static {p1, v0, v2}, Lorg/apache/tools/tar/TarUtils;->parseName([BII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/tar/TarEntry;->version:Ljava/lang/String;

    const/16 v0, 0x20

    const/16 v4, 0x109

    if-eqz p3, :cond_2

    .line 986
    invoke-static {p1, v4, v0}, Lorg/apache/tools/tar/TarUtils;->parseName([BII)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 987
    :cond_2
    invoke-static {p1, v4, v0, p2}, Lorg/apache/tools/tar/TarUtils;->parseName([BIILorg/apache/tools/zip/ZipEncoding;)Ljava/lang/String;

    move-result-object v4

    :goto_2
    iput-object v4, p0, Lorg/apache/tools/tar/TarEntry;->userName:Ljava/lang/String;

    const/16 v4, 0x129

    if-eqz p3, :cond_3

    .line 989
    invoke-static {p1, v4, v0}, Lorg/apache/tools/tar/TarUtils;->parseName([BII)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 990
    :cond_3
    invoke-static {p1, v4, v0, p2}, Lorg/apache/tools/tar/TarUtils;->parseName([BIILorg/apache/tools/zip/ZipEncoding;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lorg/apache/tools/tar/TarEntry;->groupName:Ljava/lang/String;

    const/16 v0, 0x149

    .line 992
    invoke-static {p1, v0, v1}, Lorg/apache/tools/tar/TarUtils;->parseOctalOrBinary([BII)J

    move-result-wide v4

    long-to-int v0, v4

    iput v0, p0, Lorg/apache/tools/tar/TarEntry;->devMajor:I

    const/16 v0, 0x151

    .line 994
    invoke-static {p1, v0, v1}, Lorg/apache/tools/tar/TarUtils;->parseOctalOrBinary([BII)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lorg/apache/tools/tar/TarEntry;->devMinor:I

    .line 997
    invoke-direct {p0, p1}, Lorg/apache/tools/tar/TarEntry;->evaluateType([B)I

    move-result v0

    if-eq v0, v2, :cond_6

    const/16 v0, 0x9b

    const/16 v1, 0x159

    if-eqz p3, :cond_4

    .line 1014
    invoke-static {p1, v1, v0}, Lorg/apache/tools/tar/TarUtils;->parseName([BII)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    .line 1015
    :cond_4
    invoke-static {p1, v1, v0, p2}, Lorg/apache/tools/tar/TarUtils;->parseName([BIILorg/apache/tools/zip/ZipEncoding;)Ljava/lang/String;

    move-result-object p1

    .line 1018
    :goto_4
    invoke-virtual {p0}, Lorg/apache/tools/tar/TarEntry;->isDirectory()Z

    move-result p2

    const-string p3, "/"

    if-eqz p2, :cond_5

    iget-object p2, p0, Lorg/apache/tools/tar/TarEntry;->name:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 1019
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/apache/tools/tar/TarEntry;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/tools/tar/TarEntry;->name:Ljava/lang/String;

    .line 1021
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_7

    .line 1022
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/tools/tar/TarEntry;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/tar/TarEntry;->name:Ljava/lang/String;

    goto :goto_5

    :cond_6
    const/16 p2, 0x1e2

    .line 1006
    invoke-static {p1, p2}, Lorg/apache/tools/tar/TarUtils;->parseBoolean([BI)Z

    move-result p2

    iput-boolean p2, p0, Lorg/apache/tools/tar/TarEntry;->isExtended:Z

    const/16 p2, 0x1e3

    .line 1008
    invoke-static {p1, p2, v3}, Lorg/apache/tools/tar/TarUtils;->parseOctal([BII)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/tools/tar/TarEntry;->realSize:J

    :cond_7
    :goto_5
    return-void
.end method

.method private writeEntryHeaderField(J[BIIZ)I
    .locals 4

    if-nez p6, :cond_1

    const-wide/16 v0, 0x0

    cmp-long p6, p1, v0

    if-ltz p6, :cond_0

    add-int/lit8 p6, p5, -0x1

    mul-int/lit8 p6, p6, 0x3

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p6

    cmp-long p6, p1, v2

    if-ltz p6, :cond_1

    .line 920
    :cond_0
    invoke-static {v0, v1, p3, p4, p5}, Lorg/apache/tools/tar/TarUtils;->formatLongOctalBytes(J[BII)I

    move-result p1

    return p1

    .line 922
    :cond_1
    invoke-static {p1, p2, p3, p4, p5}, Lorg/apache/tools/tar/TarUtils;->formatLongOctalOrBinaryBytes(J[BII)I

    move-result p1

    return p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 346
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    check-cast p1, Lorg/apache/tools/tar/TarEntry;

    invoke-virtual {p0, p1}, Lorg/apache/tools/tar/TarEntry;->equals(Lorg/apache/tools/tar/TarEntry;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equals(Lorg/apache/tools/tar/TarEntry;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 334
    invoke-virtual {p0}, Lorg/apache/tools/tar/TarEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/tools/tar/TarEntry;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getDevMajor()I
    .locals 1

    .line 650
    iget v0, p0, Lorg/apache/tools/tar/TarEntry;->devMajor:I

    return v0
.end method

.method public getDevMinor()I
    .locals 1

    .line 673
    iget v0, p0, Lorg/apache/tools/tar/TarEntry;->devMinor:I

    return v0
.end method

.method public getDirectoryEntries()[Lorg/apache/tools/tar/TarEntry;
    .locals 7

    .line 822
    iget-object v0, p0, Lorg/apache/tools/tar/TarEntry;->file:Ljava/io/File;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 826
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/tar/TarEntry;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-array v0, v1, [Lorg/apache/tools/tar/TarEntry;

    return-object v0

    .line 830
    :cond_1
    array-length v2, v0

    new-array v2, v2, [Lorg/apache/tools/tar/TarEntry;

    .line 832
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 833
    new-instance v3, Lorg/apache/tools/tar/TarEntry;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lorg/apache/tools/tar/TarEntry;->file:Ljava/io/File;

    aget-object v6, v0, v1

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lorg/apache/tools/tar/TarEntry;-><init>(Ljava/io/File;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v2

    :cond_3
    :goto_1
    new-array v0, v1, [Lorg/apache/tools/tar/TarEntry;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .line 610
    iget-object v0, p0, Lorg/apache/tools/tar/TarEntry;->file:Ljava/io/File;

    return-object v0
.end method

.method public getGroupId()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 486
    iget-wide v0, p0, Lorg/apache/tools/tar/TarEntry;->groupId:J

    long-to-int v0, v0

    return v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .line 542
    iget-object v0, p0, Lorg/apache/tools/tar/TarEntry;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkFlag()B
    .locals 1

    .line 405
    iget-byte v0, p0, Lorg/apache/tools/tar/TarEntry;->linkFlag:B

    return v0
.end method

.method public getLinkName()Ljava/lang/String;
    .locals 1

    .line 424
    iget-object v0, p0, Lorg/apache/tools/tar/TarEntry;->linkName:Ljava/lang/String;

    return-object v0
.end method

.method public getLongGroupId()J
    .locals 2

    .line 505
    iget-wide v0, p0, Lorg/apache/tools/tar/TarEntry;->groupId:J

    return-wide v0
.end method

.method public getLongUserId()J
    .locals 2

    .line 464
    iget-wide v0, p0, Lorg/apache/tools/tar/TarEntry;->userId:J

    return-wide v0
.end method

.method public getModTime()Ljava/util/Date;
    .locals 5

    .line 601
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lorg/apache/tools/tar/TarEntry;->modTime:J

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .line 619
    iget v0, p0, Lorg/apache/tools/tar/TarEntry;->mode:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 377
    iget-object v0, p0, Lorg/apache/tools/tar/TarEntry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRealSize()J
    .locals 2

    .line 706
    iget-wide v0, p0, Lorg/apache/tools/tar/TarEntry;->realSize:J

    return-wide v0
.end method

.method public getSize()J
    .locals 2

    .line 628
    iget-wide v0, p0, Lorg/apache/tools/tar/TarEntry;->size:J

    return-wide v0
.end method

.method public getUserId()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 445
    iget-wide v0, p0, Lorg/apache/tools/tar/TarEntry;->userId:J

    long-to-int v0, v0

    return v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 524
    iget-object v0, p0, Lorg/apache/tools/tar/TarEntry;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 356
    invoke-virtual {p0}, Lorg/apache/tools/tar/TarEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isBlockDevice()Z
    .locals 2

    .line 805
    iget-byte v0, p0, Lorg/apache/tools/tar/TarEntry;->linkFlag:B

    const/16 v1, 0x34

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCharacterDevice()Z
    .locals 2

    .line 798
    iget-byte v0, p0, Lorg/apache/tools/tar/TarEntry;->linkFlag:B

    const/16 v1, 0x33

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDescendent(Lorg/apache/tools/tar/TarEntry;)Z
    .locals 1

    .line 368
    invoke-virtual {p1}, Lorg/apache/tools/tar/TarEntry;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/tools/tar/TarEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isDirectory()Z
    .locals 2

    .line 761
    iget-object v0, p0, Lorg/apache/tools/tar/TarEntry;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 762
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0

    .line 765
    :cond_0
    iget-byte v0, p0, Lorg/apache/tools/tar/TarEntry;->linkFlag:B

    const/16 v1, 0x35

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lorg/apache/tools/tar/TarEntry;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isExtended()Z
    .locals 1

    .line 697
    iget-boolean v0, p0, Lorg/apache/tools/tar/TarEntry;->isExtended:Z

    return v0
.end method

.method public isFIFO()Z
    .locals 2

    .line 812
    iget-byte v0, p0, Lorg/apache/tools/tar/TarEntry;->linkFlag:B

    const/16 v1, 0x36

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFile()Z
    .locals 2

    .line 773
    iget-object v0, p0, Lorg/apache/tools/tar/TarEntry;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    goto :goto_1

    .line 774
    :cond_0
    iget-byte v0, p0, Lorg/apache/tools/tar/TarEntry;->linkFlag:B

    if-eqz v0, :cond_2

    const/16 v1, 0x30

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lorg/apache/tools/tar/TarEntry;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isGNULongLinkEntry()Z
    .locals 2

    .line 724
    iget-byte v0, p0, Lorg/apache/tools/tar/TarEntry;->linkFlag:B

    const/16 v1, 0x4b

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGNULongNameEntry()Z
    .locals 2

    .line 733
    iget-byte v0, p0, Lorg/apache/tools/tar/TarEntry;->linkFlag:B

    const/16 v1, 0x4c

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGNUSparse()Z
    .locals 2

    .line 715
    iget-byte v0, p0, Lorg/apache/tools/tar/TarEntry;->linkFlag:B

    const/16 v1, 0x53

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGlobalPaxHeader()Z
    .locals 2

    .line 752
    iget-byte v0, p0, Lorg/apache/tools/tar/TarEntry;->linkFlag:B

    const/16 v1, 0x67

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLink()Z
    .locals 2

    .line 790
    iget-byte v0, p0, Lorg/apache/tools/tar/TarEntry;->linkFlag:B

    const/16 v1, 0x31

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPaxHeader()Z
    .locals 2

    .line 742
    iget-byte v0, p0, Lorg/apache/tools/tar/TarEntry;->linkFlag:B

    const/16 v1, 0x78

    if-eq v0, v1, :cond_1

    const/16 v1, 0x58

    if-ne v0, v1, :cond_0

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

.method public isSymbolicLink()Z
    .locals 2

    .line 782
    iget-byte v0, p0, Lorg/apache/tools/tar/TarEntry;->linkFlag:B

    const/16 v1, 0x32

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public parseTarHeader([B)V
    .locals 2

    .line 934
    :try_start_0
    sget-object v0, Lorg/apache/tools/tar/TarUtils;->DEFAULT_ENCODING:Lorg/apache/tools/zip/ZipEncoding;

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/tar/TarEntry;->parseTarHeader([BLorg/apache/tools/zip/ZipEncoding;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 937
    :catch_0
    :try_start_1
    sget-object v0, Lorg/apache/tools/tar/TarUtils;->DEFAULT_ENCODING:Lorg/apache/tools/zip/ZipEncoding;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/tools/tar/TarEntry;->parseTarHeader([BLorg/apache/tools/zip/ZipEncoding;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    :catch_1
    move-exception p1

    .line 940
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public parseTarHeader([BLorg/apache/tools/zip/ZipEncoding;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 956
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/tools/tar/TarEntry;->parseTarHeader([BLorg/apache/tools/zip/ZipEncoding;Z)V

    return-void
.end method

.method public setDevMajor(I)V
    .locals 3

    if-ltz p1, :cond_0

    .line 664
    iput p1, p0, Lorg/apache/tools/tar/TarEntry;->devMajor:I

    return-void

    .line 661
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Major device number is out of range: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDevMinor(I)V
    .locals 3

    if-ltz p1, :cond_0

    .line 687
    iput p1, p0, Lorg/apache/tools/tar/TarEntry;->devMinor:I

    return-void

    .line 684
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Minor device number is out of range: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setGroupId(I)V
    .locals 2

    int-to-long v0, p1

    .line 495
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/tar/TarEntry;->setGroupId(J)V

    return-void
.end method

.method public setGroupId(J)V
    .locals 0

    .line 515
    iput-wide p1, p0, Lorg/apache/tools/tar/TarEntry;->groupId:J

    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .locals 0

    .line 551
    iput-object p1, p0, Lorg/apache/tools/tar/TarEntry;->groupName:Ljava/lang/String;

    return-void
.end method

.method public setIds(II)V
    .locals 0

    .line 561
    invoke-virtual {p0, p1}, Lorg/apache/tools/tar/TarEntry;->setUserId(I)V

    .line 562
    invoke-virtual {p0, p2}, Lorg/apache/tools/tar/TarEntry;->setGroupId(I)V

    return-void
.end method

.method public setLinkFlag(B)V
    .locals 0

    .line 415
    iput-byte p1, p0, Lorg/apache/tools/tar/TarEntry;->linkFlag:B

    return-void
.end method

.method public setLinkName(Ljava/lang/String;)V
    .locals 0

    .line 433
    iput-object p1, p0, Lorg/apache/tools/tar/TarEntry;->linkName:Ljava/lang/String;

    return-void
.end method

.method public setModTime(J)V
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 583
    div-long/2addr p1, v0

    iput-wide p1, p0, Lorg/apache/tools/tar/TarEntry;->modTime:J

    return-void
.end method

.method public setModTime(Ljava/util/Date;)V
    .locals 4

    .line 592
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/tools/tar/TarEntry;->modTime:J

    return-void
.end method

.method public setMode(I)V
    .locals 0

    .line 395
    iput p1, p0, Lorg/apache/tools/tar/TarEntry;->mode:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 386
    invoke-static {p1, v0}, Lorg/apache/tools/tar/TarEntry;->normalizeFileName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/tar/TarEntry;->name:Ljava/lang/String;

    return-void
.end method

.method public setNames(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 572
    invoke-virtual {p0, p1}, Lorg/apache/tools/tar/TarEntry;->setUserName(Ljava/lang/String;)V

    .line 573
    invoke-virtual {p0, p2}, Lorg/apache/tools/tar/TarEntry;->setGroupName(Ljava/lang/String;)V

    return-void
.end method

.method public setSize(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 641
    iput-wide p1, p0, Lorg/apache/tools/tar/TarEntry;->size:J

    return-void

    .line 639
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Size is out of range: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setUserId(I)V
    .locals 2

    int-to-long v0, p1

    .line 454
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/tar/TarEntry;->setUserId(J)V

    return-void
.end method

.method public setUserId(J)V
    .locals 0

    .line 474
    iput-wide p1, p0, Lorg/apache/tools/tar/TarEntry;->userId:J

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    .line 533
    iput-object p1, p0, Lorg/apache/tools/tar/TarEntry;->userName:Ljava/lang/String;

    return-void
.end method

.method public writeEntryHeader([B)V
    .locals 2

    const/4 v0, 0x0

    .line 848
    :try_start_0
    sget-object v1, Lorg/apache/tools/tar/TarUtils;->DEFAULT_ENCODING:Lorg/apache/tools/zip/ZipEncoding;

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/tools/tar/TarEntry;->writeEntryHeader([BLorg/apache/tools/zip/ZipEncoding;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 851
    :catch_0
    :try_start_1
    sget-object v1, Lorg/apache/tools/tar/TarUtils;->FALLBACK_ENCODING:Lorg/apache/tools/zip/ZipEncoding;

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/tools/tar/TarEntry;->writeEntryHeader([BLorg/apache/tools/zip/ZipEncoding;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    :catch_1
    move-exception p1

    .line 854
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public writeEntryHeader([BLorg/apache/tools/zip/ZipEncoding;Z)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v7, p0

    move-object v8, p1

    move-object/from16 v9, p2

    .line 873
    iget-object v0, v7, Lorg/apache/tools/tar/TarEntry;->name:Ljava/lang/String;

    const/4 v10, 0x0

    const/16 v11, 0x64

    invoke-static {v0, p1, v10, v11, v9}, Lorg/apache/tools/tar/TarUtils;->formatNameBytes(Ljava/lang/String;[BIILorg/apache/tools/zip/ZipEncoding;)I

    move-result v4

    .line 875
    iget v0, v7, Lorg/apache/tools/tar/TarEntry;->mode:I

    int-to-long v1, v0

    const/16 v5, 0x8

    move-object v0, p0

    move-object v3, p1

    move/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/apache/tools/tar/TarEntry;->writeEntryHeaderField(J[BIIZ)I

    move-result v4

    .line 876
    iget-wide v1, v7, Lorg/apache/tools/tar/TarEntry;->userId:J

    invoke-direct/range {v0 .. v6}, Lorg/apache/tools/tar/TarEntry;->writeEntryHeaderField(J[BIIZ)I

    move-result v4

    .line 878
    iget-wide v1, v7, Lorg/apache/tools/tar/TarEntry;->groupId:J

    invoke-direct/range {v0 .. v6}, Lorg/apache/tools/tar/TarEntry;->writeEntryHeaderField(J[BIIZ)I

    move-result v4

    .line 880
    iget-wide v1, v7, Lorg/apache/tools/tar/TarEntry;->size:J

    const/16 v5, 0xc

    invoke-direct/range {v0 .. v6}, Lorg/apache/tools/tar/TarEntry;->writeEntryHeaderField(J[BIIZ)I

    move-result v4

    .line 881
    iget-wide v1, v7, Lorg/apache/tools/tar/TarEntry;->modTime:J

    invoke-direct/range {v0 .. v6}, Lorg/apache/tools/tar/TarEntry;->writeEntryHeaderField(J[BIIZ)I

    move-result v12

    move v0, v10

    move v1, v12

    :goto_0
    const/16 v13, 0x8

    const/16 v2, 0x20

    if-ge v0, v13, :cond_0

    add-int/lit8 v3, v1, 0x1

    .line 887
    aput-byte v2, v8, v1

    add-int/lit8 v0, v0, 0x1

    move v1, v3

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    .line 890
    iget-byte v3, v7, Lorg/apache/tools/tar/TarEntry;->linkFlag:B

    aput-byte v3, v8, v1

    .line 891
    iget-object v1, v7, Lorg/apache/tools/tar/TarEntry;->linkName:Ljava/lang/String;

    invoke-static {v1, p1, v0, v11, v9}, Lorg/apache/tools/tar/TarUtils;->formatNameBytes(Ljava/lang/String;[BIILorg/apache/tools/zip/ZipEncoding;)I

    move-result v0

    .line 893
    iget-object v1, v7, Lorg/apache/tools/tar/TarEntry;->magic:Ljava/lang/String;

    const/4 v3, 0x6

    invoke-static {v1, p1, v0, v3}, Lorg/apache/tools/tar/TarUtils;->formatNameBytes(Ljava/lang/String;[BII)I

    move-result v0

    .line 894
    iget-object v1, v7, Lorg/apache/tools/tar/TarEntry;->version:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v1, p1, v0, v3}, Lorg/apache/tools/tar/TarUtils;->formatNameBytes(Ljava/lang/String;[BII)I

    move-result v0

    .line 895
    iget-object v1, v7, Lorg/apache/tools/tar/TarEntry;->userName:Ljava/lang/String;

    invoke-static {v1, p1, v0, v2, v9}, Lorg/apache/tools/tar/TarUtils;->formatNameBytes(Ljava/lang/String;[BIILorg/apache/tools/zip/ZipEncoding;)I

    move-result v0

    .line 897
    iget-object v1, v7, Lorg/apache/tools/tar/TarEntry;->groupName:Ljava/lang/String;

    invoke-static {v1, p1, v0, v2, v9}, Lorg/apache/tools/tar/TarUtils;->formatNameBytes(Ljava/lang/String;[BIILorg/apache/tools/zip/ZipEncoding;)I

    move-result v4

    .line 899
    iget v0, v7, Lorg/apache/tools/tar/TarEntry;->devMajor:I

    int-to-long v1, v0

    const/16 v5, 0x8

    move-object v0, p0

    move-object v3, p1

    move/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/apache/tools/tar/TarEntry;->writeEntryHeaderField(J[BIIZ)I

    move-result v4

    .line 901
    iget v0, v7, Lorg/apache/tools/tar/TarEntry;->devMinor:I

    int-to-long v1, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/apache/tools/tar/TarEntry;->writeEntryHeaderField(J[BIIZ)I

    move-result v0

    .line 904
    :goto_1
    array-length v1, v8

    if-ge v0, v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    .line 905
    aput-byte v10, v8, v0

    move v0, v1

    goto :goto_1

    .line 908
    :cond_1
    invoke-static {p1}, Lorg/apache/tools/tar/TarUtils;->computeCheckSum([B)J

    move-result-wide v0

    .line 910
    invoke-static {v0, v1, p1, v12, v13}, Lorg/apache/tools/tar/TarUtils;->formatCheckSumOctalBytes(J[BII)I

    return-void
.end method
