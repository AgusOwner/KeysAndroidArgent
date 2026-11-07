.class public Lorg/apache/tools/zip/ZipEntry;
.super Ljava/util/zip/ZipEntry;
.source "ZipEntry.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CRC_UNKNOWN:I = -0x1

.field private static final EMPTY:[B

.field public static final PLATFORM_FAT:I = 0x0

.field public static final PLATFORM_UNIX:I = 0x3

.field private static final SHORT_MASK:I = 0xffff

.field private static final SHORT_SHIFT:I = 0x10

.field private static final noExtraFields:[Lorg/apache/tools/zip/ZipExtraField;


# instance fields
.field private externalAttributes:J

.field private extraFields:[Lorg/apache/tools/zip/ZipExtraField;

.field private gpb:Lorg/apache/tools/zip/GeneralPurposeBit;

.field private internalAttributes:I

.field private method:I

.field private name:Ljava/lang/String;

.field private platform:I

.field private rawName:[B

.field private size:J

.field private unparseableExtra:Lorg/apache/tools/zip/UnparseableExtraFieldData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 56
    sput-object v1, Lorg/apache/tools/zip/ZipEntry;->EMPTY:[B

    new-array v0, v0, [Lorg/apache/tools/zip/ZipExtraField;

    .line 82
    sput-object v0, Lorg/apache/tools/zip/ZipEntry;->noExtraFields:[Lorg/apache/tools/zip/ZipExtraField;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    const-string v0, ""

    .line 147
    invoke-direct {p0, v0}, Lorg/apache/tools/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 2

    .line 163
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/tools/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 165
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/zip/ZipEntry;->setSize(J)V

    .line 167
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/zip/ZipEntry;->setTime(J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 94
    invoke-direct {p0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 64
    iput v0, p0, Lorg/apache/tools/zip/ZipEntry;->method:I

    const-wide/16 v0, -0x1

    .line 72
    iput-wide v0, p0, Lorg/apache/tools/zip/ZipEntry;->size:J

    const/4 v0, 0x0

    .line 74
    iput v0, p0, Lorg/apache/tools/zip/ZipEntry;->internalAttributes:I

    .line 75
    iput v0, p0, Lorg/apache/tools/zip/ZipEntry;->platform:I

    const-wide/16 v0, 0x0

    .line 76
    iput-wide v0, p0, Lorg/apache/tools/zip/ZipEntry;->externalAttributes:J

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lorg/apache/tools/zip/ZipEntry;->unparseableExtra:Lorg/apache/tools/zip/UnparseableExtraFieldData;

    .line 79
    iput-object v0, p0, Lorg/apache/tools/zip/ZipEntry;->name:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lorg/apache/tools/zip/ZipEntry;->rawName:[B

    .line 81
    new-instance v0, Lorg/apache/tools/zip/GeneralPurposeBit;

    invoke-direct {v0}, Lorg/apache/tools/zip/GeneralPurposeBit;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/zip/ZipEntry;->gpb:Lorg/apache/tools/zip/GeneralPurposeBit;

    .line 95
    invoke-virtual {p0, p1}, Lorg/apache/tools/zip/ZipEntry;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/zip/ZipEntry;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 109
    invoke-direct {p0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/util/zip/ZipEntry;)V

    const/4 v0, -0x1

    .line 64
    iput v0, p0, Lorg/apache/tools/zip/ZipEntry;->method:I

    const-wide/16 v0, -0x1

    .line 72
    iput-wide v0, p0, Lorg/apache/tools/zip/ZipEntry;->size:J

    const/4 v0, 0x0

    .line 74
    iput v0, p0, Lorg/apache/tools/zip/ZipEntry;->internalAttributes:I

    .line 75
    iput v0, p0, Lorg/apache/tools/zip/ZipEntry;->platform:I

    const-wide/16 v0, 0x0

    .line 76
    iput-wide v0, p0, Lorg/apache/tools/zip/ZipEntry;->externalAttributes:J

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lorg/apache/tools/zip/ZipEntry;->unparseableExtra:Lorg/apache/tools/zip/UnparseableExtraFieldData;

    .line 79
    iput-object v0, p0, Lorg/apache/tools/zip/ZipEntry;->name:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lorg/apache/tools/zip/ZipEntry;->rawName:[B

    .line 81
    new-instance v0, Lorg/apache/tools/zip/GeneralPurposeBit;

    invoke-direct {v0}, Lorg/apache/tools/zip/GeneralPurposeBit;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/zip/ZipEntry;->gpb:Lorg/apache/tools/zip/GeneralPurposeBit;

    .line 110
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/ZipEntry;->setName(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getExtra()[B

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 113
    sget-object v2, Lorg/apache/tools/zip/ExtraFieldUtils$UnparseableExtraField;->READ:Lorg/apache/tools/zip/ExtraFieldUtils$UnparseableExtraField;

    invoke-static {v0, v1, v2}, Lorg/apache/tools/zip/ExtraFieldUtils;->parse([BZLorg/apache/tools/zip/ExtraFieldUtils$UnparseableExtraField;)[Lorg/apache/tools/zip/ZipExtraField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/ZipEntry;->setExtraFields([Lorg/apache/tools/zip/ZipExtraField;)V

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->setExtra()V

    .line 119
    :goto_0
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/ZipEntry;->setMethod(I)V

    .line 120
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/tools/zip/ZipEntry;->size:J

    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/zip/ZipEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 134
    invoke-direct {p0, p1}, Lorg/apache/tools/zip/ZipEntry;-><init>(Ljava/util/zip/ZipEntry;)V

    .line 135
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getInternalAttributes()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/ZipEntry;->setInternalAttributes(I)V

    .line 136
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getExternalAttributes()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/zip/ZipEntry;->setExternalAttributes(J)V

    .line 137
    invoke-direct {p0}, Lorg/apache/tools/zip/ZipEntry;->getAllExtraFieldsNoCopy()[Lorg/apache/tools/zip/ZipExtraField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/ZipEntry;->setExtraFields([Lorg/apache/tools/zip/ZipExtraField;)V

    .line 138
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getPlatform()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/ZipEntry;->setPlatform(I)V

    .line 139
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getGeneralPurposeBit()Lorg/apache/tools/zip/GeneralPurposeBit;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {p1}, Lorg/apache/tools/zip/GeneralPurposeBit;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/tools/zip/GeneralPurposeBit;

    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/tools/zip/ZipEntry;->setGeneralPurposeBit(Lorg/apache/tools/zip/GeneralPurposeBit;)V

    return-void
.end method

.method private copyOf([Lorg/apache/tools/zip/ZipExtraField;)[Lorg/apache/tools/zip/ZipExtraField;
    .locals 1

    .line 359
    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lorg/apache/tools/zip/ZipEntry;->copyOf([Lorg/apache/tools/zip/ZipExtraField;I)[Lorg/apache/tools/zip/ZipExtraField;

    move-result-object p1

    return-object p1
.end method

.method private copyOf([Lorg/apache/tools/zip/ZipExtraField;I)[Lorg/apache/tools/zip/ZipExtraField;
    .locals 2

    .line 363
    new-array v0, p2, [Lorg/apache/tools/zip/ZipExtraField;

    .line 364
    array-length v1, p1

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private getAllExtraFields()[Lorg/apache/tools/zip/ZipExtraField;
    .locals 2

    .line 379
    invoke-direct {p0}, Lorg/apache/tools/zip/ZipEntry;->getAllExtraFieldsNoCopy()[Lorg/apache/tools/zip/ZipExtraField;

    move-result-object v0

    .line 380
    iget-object v1, p0, Lorg/apache/tools/zip/ZipEntry;->extraFields:[Lorg/apache/tools/zip/ZipExtraField;

    if-ne v0, v1, :cond_0

    invoke-direct {p0, v0}, Lorg/apache/tools/zip/ZipEntry;->copyOf([Lorg/apache/tools/zip/ZipExtraField;)[Lorg/apache/tools/zip/ZipExtraField;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private getAllExtraFieldsNoCopy()[Lorg/apache/tools/zip/ZipExtraField;
    .locals 2

    .line 390
    iget-object v0, p0, Lorg/apache/tools/zip/ZipEntry;->extraFields:[Lorg/apache/tools/zip/ZipExtraField;

    if-nez v0, :cond_0

    .line 391
    invoke-direct {p0}, Lorg/apache/tools/zip/ZipEntry;->getUnparseableOnly()[Lorg/apache/tools/zip/ZipExtraField;

    move-result-object v0

    return-object v0

    .line 393
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/zip/ZipEntry;->unparseableExtra:Lorg/apache/tools/zip/UnparseableExtraFieldData;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lorg/apache/tools/zip/ZipEntry;->getMergedFields()[Lorg/apache/tools/zip/ZipExtraField;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private getMergedFields()[Lorg/apache/tools/zip/ZipExtraField;
    .locals 3

    .line 369
    iget-object v0, p0, Lorg/apache/tools/zip/ZipEntry;->extraFields:[Lorg/apache/tools/zip/ZipExtraField;

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/zip/ZipEntry;->copyOf([Lorg/apache/tools/zip/ZipExtraField;I)[Lorg/apache/tools/zip/ZipExtraField;

    move-result-object v0

    .line 370
    iget-object v1, p0, Lorg/apache/tools/zip/ZipEntry;->extraFields:[Lorg/apache/tools/zip/ZipExtraField;

    array-length v1, v1

    iget-object v2, p0, Lorg/apache/tools/zip/ZipEntry;->unparseableExtra:Lorg/apache/tools/zip/UnparseableExtraFieldData;

    aput-object v2, v0, v1

    return-object v0
.end method

.method private getParseableExtraFields()[Lorg/apache/tools/zip/ZipExtraField;
    .locals 2

    .line 353
    invoke-direct {p0}, Lorg/apache/tools/zip/ZipEntry;->getParseableExtraFieldsNoCopy()[Lorg/apache/tools/zip/ZipExtraField;

    move-result-object v0

    .line 354
    iget-object v1, p0, Lorg/apache/tools/zip/ZipEntry;->extraFields:[Lorg/apache/tools/zip/ZipExtraField;

    if-ne v0, v1, :cond_0

    invoke-direct {p0, v0}, Lorg/apache/tools/zip/ZipEntry;->copyOf([Lorg/apache/tools/zip/ZipExtraField;)[Lorg/apache/tools/zip/ZipExtraField;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private getParseableExtraFieldsNoCopy()[Lorg/apache/tools/zip/ZipExtraField;
    .locals 1

    .line 346
    iget-object v0, p0, Lorg/apache/tools/zip/ZipEntry;->extraFields:[Lorg/apache/tools/zip/ZipExtraField;

    if-nez v0, :cond_0

    .line 347
    sget-object v0, Lorg/apache/tools/zip/ZipEntry;->noExtraFields:[Lorg/apache/tools/zip/ZipExtraField;

    :cond_0
    return-object v0
.end method

.method private getUnparseableOnly()[Lorg/apache/tools/zip/ZipExtraField;
    .locals 3

    .line 375
    iget-object v0, p0, Lorg/apache/tools/zip/ZipEntry;->unparseableExtra:Lorg/apache/tools/zip/UnparseableExtraFieldData;

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/tools/zip/ZipEntry;->noExtraFields:[Lorg/apache/tools/zip/ZipExtraField;

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/tools/zip/ZipExtraField;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method private mergeExtraFields([Lorg/apache/tools/zip/ZipExtraField;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 734
    iget-object v0, p0, Lorg/apache/tools/zip/ZipEntry;->extraFields:[Lorg/apache/tools/zip/ZipExtraField;

    if-nez v0, :cond_0

    .line 735
    invoke-virtual {p0, p1}, Lorg/apache/tools/zip/ZipEntry;->setExtraFields([Lorg/apache/tools/zip/ZipExtraField;)V

    goto :goto_4

    .line 737
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    aget-object v3, p1, v2

    .line 739
    instance-of v4, v3, Lorg/apache/tools/zip/UnparseableExtraFieldData;

    if-eqz v4, :cond_1

    .line 740
    iget-object v4, p0, Lorg/apache/tools/zip/ZipEntry;->unparseableExtra:Lorg/apache/tools/zip/UnparseableExtraFieldData;

    goto :goto_1

    .line 742
    :cond_1
    invoke-interface {v3}, Lorg/apache/tools/zip/ZipExtraField;->getHeaderId()Lorg/apache/tools/zip/ZipShort;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/tools/zip/ZipEntry;->getExtraField(Lorg/apache/tools/zip/ZipShort;)Lorg/apache/tools/zip/ZipExtraField;

    move-result-object v4

    :goto_1
    if-nez v4, :cond_2

    .line 745
    invoke-virtual {p0, v3}, Lorg/apache/tools/zip/ZipEntry;->addExtraField(Lorg/apache/tools/zip/ZipExtraField;)V

    goto :goto_3

    :cond_2
    if-nez p2, :cond_4

    .line 747
    instance-of v5, v4, Lorg/apache/tools/zip/CentralDirectoryParsingZipExtraField;

    if-nez v5, :cond_3

    goto :goto_2

    .line 752
    :cond_3
    invoke-interface {v3}, Lorg/apache/tools/zip/ZipExtraField;->getCentralDirectoryData()[B

    move-result-object v3

    .line 753
    check-cast v4, Lorg/apache/tools/zip/CentralDirectoryParsingZipExtraField;

    array-length v5, v3

    .line 754
    invoke-interface {v4, v3, v1, v5}, Lorg/apache/tools/zip/CentralDirectoryParsingZipExtraField;->parseFromCentralDirectoryData([BII)V

    goto :goto_3

    .line 749
    :cond_4
    :goto_2
    invoke-interface {v3}, Lorg/apache/tools/zip/ZipExtraField;->getLocalFileDataData()[B

    move-result-object v3

    .line 750
    array-length v5, v3

    invoke-interface {v4, v3, v1, v5}, Lorg/apache/tools/zip/ZipExtraField;->parseFromLocalFileData([BII)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 758
    :cond_5
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->setExtra()V

    :goto_4
    return-void
.end method


# virtual methods
.method public addAsFirstExtraField(Lorg/apache/tools/zip/ZipExtraField;)V
    .locals 4

    .line 434
    instance-of v0, p1, Lorg/apache/tools/zip/UnparseableExtraFieldData;

    if-eqz v0, :cond_0

    .line 435
    check-cast p1, Lorg/apache/tools/zip/UnparseableExtraFieldData;

    iput-object p1, p0, Lorg/apache/tools/zip/ZipEntry;->unparseableExtra:Lorg/apache/tools/zip/UnparseableExtraFieldData;

    goto :goto_1

    .line 437
    :cond_0
    invoke-interface {p1}, Lorg/apache/tools/zip/ZipExtraField;->getHeaderId()Lorg/apache/tools/zip/ZipShort;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/ZipEntry;->getExtraField(Lorg/apache/tools/zip/ZipShort;)Lorg/apache/tools/zip/ZipExtraField;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 438
    invoke-interface {p1}, Lorg/apache/tools/zip/ZipExtraField;->getHeaderId()Lorg/apache/tools/zip/ZipShort;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/ZipEntry;->removeExtraField(Lorg/apache/tools/zip/ZipShort;)V

    .line 440
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/zip/ZipEntry;->extraFields:[Lorg/apache/tools/zip/ZipExtraField;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 441
    array-length v2, v0

    add-int/2addr v2, v1

    goto :goto_0

    :cond_2
    move v2, v1

    .line 442
    :goto_0
    new-array v2, v2, [Lorg/apache/tools/zip/ZipExtraField;

    iput-object v2, p0, Lorg/apache/tools/zip/ZipEntry;->extraFields:[Lorg/apache/tools/zip/ZipExtraField;

    const/4 v3, 0x0

    .line 443
    aput-object p1, v2, v3

    if-eqz v0, :cond_3

    .line 445
    array-length p1, v2

    sub-int/2addr p1, v1

    invoke-static {v0, v3, v2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 448
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->setExtra()V

    return-void
.end method

.method public addExtraField(Lorg/apache/tools/zip/ZipExtraField;)V
    .locals 3

    .line 407
    instance-of v0, p1, Lorg/apache/tools/zip/UnparseableExtraFieldData;

    if-eqz v0, :cond_0

    .line 408
    check-cast p1, Lorg/apache/tools/zip/UnparseableExtraFieldData;

    iput-object p1, p0, Lorg/apache/tools/zip/ZipEntry;->unparseableExtra:Lorg/apache/tools/zip/UnparseableExtraFieldData;

    goto :goto_0

    .line 410
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/zip/ZipEntry;->extraFields:[Lorg/apache/tools/zip/ZipExtraField;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    new-array v0, v1, [Lorg/apache/tools/zip/ZipExtraField;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 411
    iput-object v0, p0, Lorg/apache/tools/zip/ZipEntry;->extraFields:[Lorg/apache/tools/zip/ZipExtraField;

    goto :goto_0

    .line 413
    :cond_1
    invoke-interface {p1}, Lorg/apache/tools/zip/ZipExtraField;->getHeaderId()Lorg/apache/tools/zip/ZipShort;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/ZipEntry;->getExtraField(Lorg/apache/tools/zip/ZipShort;)Lorg/apache/tools/zip/ZipExtraField;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 414
    invoke-interface {p1}, Lorg/apache/tools/zip/ZipExtraField;->getHeaderId()Lorg/apache/tools/zip/ZipShort;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/ZipEntry;->removeExtraField(Lorg/apache/tools/zip/ZipShort;)V

    .line 416
    :cond_2
    iget-object v0, p0, Lorg/apache/tools/zip/ZipEntry;->extraFields:[Lorg/apache/tools/zip/ZipExtraField;

    array-length v2, v0

    add-int/2addr v2, v1

    invoke-direct {p0, v0, v2}, Lorg/apache/tools/zip/ZipEntry;->copyOf([Lorg/apache/tools/zip/ZipExtraField;I)[Lorg/apache/tools/zip/ZipExtraField;

    move-result-object v0

    .line 417
    iget-object v1, p0, Lorg/apache/tools/zip/ZipEntry;->extraFields:[Lorg/apache/tools/zip/ZipExtraField;

    array-length v1, v1

    aput-object p1, v0, v1

    .line 418
    iput-object v0, p0, Lorg/apache/tools/zip/ZipEntry;->extraFields:[Lorg/apache/tools/zip/ZipExtraField;

    .line 421
    :goto_0
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->setExtra()V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .line 179
    invoke-super {p0}, Ljava/util/zip/ZipEntry;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/zip/ZipEntry;

    .line 181
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->getInternalAttributes()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/zip/ZipEntry;->setInternalAttributes(I)V

    .line 182
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->getExternalAttributes()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/zip/ZipEntry;->setExternalAttributes(J)V

    .line 183
    invoke-direct {p0}, Lorg/apache/tools/zip/ZipEntry;->getAllExtraFieldsNoCopy()[Lorg/apache/tools/zip/ZipExtraField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/zip/ZipEntry;->setExtraFields([Lorg/apache/tools/zip/ZipExtraField;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    .line 779
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    .line 782
    :cond_1
    check-cast p1, Lorg/apache/tools/zip/ZipEntry;

    .line 783
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    .line 784
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_2

    if-eqz v3, :cond_3

    return v1

    .line 789
    :cond_2
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 792
    :cond_3
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->getComment()Ljava/lang/String;

    move-result-object v2

    .line 793
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getComment()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    if-nez v2, :cond_4

    move-object v2, v4

    :cond_4
    if-nez v3, :cond_5

    move-object v3, v4

    .line 800
    :cond_5
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->getTime()J

    move-result-wide v4

    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getTime()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_6

    .line 801
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 802
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->getInternalAttributes()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getInternalAttributes()I

    move-result v3

    if-ne v2, v3, :cond_6

    .line 803
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->getPlatform()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getPlatform()I

    move-result v3

    if-ne v2, v3, :cond_6

    .line 804
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->getExternalAttributes()J

    move-result-wide v2

    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getExternalAttributes()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    .line 805
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->getMethod()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getMethod()I

    move-result v3

    if-ne v2, v3, :cond_6

    .line 806
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->getSize()J

    move-result-wide v2

    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getSize()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    .line 807
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->getCrc()J

    move-result-wide v2

    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getCrc()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    .line 808
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v2

    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    .line 809
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->getCentralDirectoryExtra()[B

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getCentralDirectoryExtra()[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 810
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->getLocalFileDataExtra()[B

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getLocalFileDataExtra()[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/apache/tools/zip/ZipEntry;->gpb:Lorg/apache/tools/zip/GeneralPurposeBit;

    iget-object p1, p1, Lorg/apache/tools/zip/ZipEntry;->gpb:Lorg/apache/tools/zip/GeneralPurposeBit;

    .line 811
    invoke-virtual {v2, p1}, Lorg/apache/tools/zip/GeneralPurposeBit;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_0

    :cond_6
    move v0, v1

    :goto_0
    return v0

    :cond_7
    :goto_1
    return v1
.end method

.method public getCentralDirectoryExtra()[B
    .locals 1

    const/4 v0, 0x1

    .line 579
    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/ZipEntry;->getExtraFields(Z)[Lorg/apache/tools/zip/ZipExtraField;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/zip/ExtraFieldUtils;->mergeCentralDirectoryData([Lorg/apache/tools/zip/ZipExtraField;)[B

    move-result-object v0

    return-object v0
.end method

.method public getExternalAttributes()J
    .locals 2

    .line 239
    iget-wide v0, p0, Lorg/apache/tools/zip/ZipEntry;->externalAttributes:J

    return-wide v0
.end method

.method public getExtraField(Lorg/apache/tools/zip/ZipShort;)Lorg/apache/tools/zip/ZipExtraField;
    .locals 5

    .line 492
    iget-object v0, p0, Lorg/apache/tools/zip/ZipEntry;->extraFields:[Lorg/apache/tools/zip/ZipExtraField;

    if-eqz v0, :cond_1

    .line 493
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 494
    invoke-interface {v3}, Lorg/apache/tools/zip/ZipExtraField;->getHeaderId()Lorg/apache/tools/zip/ZipShort;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/apache/tools/zip/ZipShort;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getExtraFields()[Lorg/apache/tools/zip/ZipExtraField;
    .locals 1

    .line 329
    invoke-direct {p0}, Lorg/apache/tools/zip/ZipEntry;->getParseableExtraFields()[Lorg/apache/tools/zip/ZipExtraField;

    move-result-object v0

    return-object v0
.end method

.method public getExtraFields(Z)[Lorg/apache/tools/zip/ZipExtraField;
    .locals 0

    if-eqz p1, :cond_0

    .line 342
    invoke-direct {p0}, Lorg/apache/tools/zip/ZipEntry;->getAllExtraFields()[Lorg/apache/tools/zip/ZipExtraField;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/apache/tools/zip/ZipEntry;->getParseableExtraFields()[Lorg/apache/tools/zip/ZipExtraField;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getGeneralPurposeBit()Lorg/apache/tools/zip/GeneralPurposeBit;
    .locals 1

    .line 711
    iget-object v0, p0, Lorg/apache/tools/zip/ZipEntry;->gpb:Lorg/apache/tools/zip/GeneralPurposeBit;

    return-object v0
.end method

.method public getInternalAttributes()I
    .locals 1

    .line 219
    iget v0, p0, Lorg/apache/tools/zip/ZipEntry;->internalAttributes:I

    return v0
.end method

.method public getLastModifiedDate()Ljava/util/Date;
    .locals 3

    .line 768
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getLocalFileDataExtra()[B
    .locals 1

    .line 568
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->getExtra()[B

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 569
    :cond_0
    sget-object v0, Lorg/apache/tools/zip/ZipEntry;->EMPTY:[B

    :goto_0
    return-object v0
.end method

.method public getMethod()I
    .locals 1

    .line 195
    iget v0, p0, Lorg/apache/tools/zip/ZipEntry;->method:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 606
    iget-object v0, p0, Lorg/apache/tools/zip/ZipEntry;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPlatform()I
    .locals 1

    .line 291
    iget v0, p0, Lorg/apache/tools/zip/ZipEntry;->platform:I

    return v0
.end method

.method public getRawName()[B
    .locals 4

    .line 681
    iget-object v0, p0, Lorg/apache/tools/zip/ZipEntry;->rawName:[B

    if-eqz v0, :cond_0

    .line 682
    array-length v1, v0

    new-array v1, v1, [B

    .line 683
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 639
    iget-wide v0, p0, Lorg/apache/tools/zip/ZipEntry;->size:J

    return-wide v0
.end method

.method public getUnixMode()I
    .locals 4

    .line 277
    iget v0, p0, Lorg/apache/tools/zip/ZipEntry;->platform:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 278
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->getExternalAttributes()J

    move-result-wide v0

    const/16 v2, 0x10

    shr-long/2addr v0, v2

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    long-to-int v0, v0

    :goto_0
    return v0
.end method

.method public getUnparseableExtraFieldData()Lorg/apache/tools/zip/UnparseableExtraFieldData;
    .locals 1

    .line 508
    iget-object v0, p0, Lorg/apache/tools/zip/ZipEntry;->unparseableExtra:Lorg/apache/tools/zip/UnparseableExtraFieldData;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 702
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isDirectory()Z
    .locals 2

    .line 617
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeExtraField(Lorg/apache/tools/zip/ZipShort;)V
    .locals 7

    .line 458
    iget-object v0, p0, Lorg/apache/tools/zip/ZipEntry;->extraFields:[Lorg/apache/tools/zip/ZipExtraField;

    if-eqz v0, :cond_3

    .line 461
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 462
    iget-object v1, p0, Lorg/apache/tools/zip/ZipEntry;->extraFields:[Lorg/apache/tools/zip/ZipExtraField;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 463
    invoke-interface {v5}, Lorg/apache/tools/zip/ZipExtraField;->getHeaderId()Lorg/apache/tools/zip/ZipShort;

    move-result-object v6

    invoke-virtual {p1, v6}, Lorg/apache/tools/zip/ZipShort;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 464
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 467
    :cond_1
    iget-object p1, p0, Lorg/apache/tools/zip/ZipEntry;->extraFields:[Lorg/apache/tools/zip/ZipExtraField;

    array-length p1, p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eq p1, v1, :cond_2

    new-array p1, v3, [Lorg/apache/tools/zip/ZipExtraField;

    .line 470
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/tools/zip/ZipExtraField;

    iput-object p1, p0, Lorg/apache/tools/zip/ZipEntry;->extraFields:[Lorg/apache/tools/zip/ZipExtraField;

    .line 471
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->setExtra()V

    return-void

    .line 468
    :cond_2
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1

    .line 459
    :cond_3
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1
.end method

.method public removeUnparseableExtraFieldData()V
    .locals 1

    .line 478
    iget-object v0, p0, Lorg/apache/tools/zip/ZipEntry;->unparseableExtra:Lorg/apache/tools/zip/UnparseableExtraFieldData;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 481
    iput-object v0, p0, Lorg/apache/tools/zip/ZipEntry;->unparseableExtra:Lorg/apache/tools/zip/UnparseableExtraFieldData;

    .line 482
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->setExtra()V

    return-void

    .line 479
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public setCentralDirectoryExtra([B)V
    .locals 2

    .line 553
    :try_start_0
    sget-object v0, Lorg/apache/tools/zip/ExtraFieldUtils$UnparseableExtraField;->READ:Lorg/apache/tools/zip/ExtraFieldUtils$UnparseableExtraField;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lorg/apache/tools/zip/ExtraFieldUtils;->parse([BZLorg/apache/tools/zip/ExtraFieldUtils$UnparseableExtraField;)[Lorg/apache/tools/zip/ZipExtraField;

    move-result-object p1

    .line 555
    invoke-direct {p0, p1, v1}, Lorg/apache/tools/zip/ZipEntry;->mergeExtraFields([Lorg/apache/tools/zip/ZipExtraField;Z)V
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 557
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/util/zip/ZipException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setComprSize(J)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 595
    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/zip/ZipEntry;->setCompressedSize(J)V

    return-void
.end method

.method public setExternalAttributes(J)V
    .locals 0

    .line 249
    iput-wide p1, p0, Lorg/apache/tools/zip/ZipEntry;->externalAttributes:J

    return-void
.end method

.method protected setExtra()V
    .locals 1

    const/4 v0, 0x1

    .line 543
    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/ZipEntry;->getExtraFields(Z)[Lorg/apache/tools/zip/ZipExtraField;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/zip/ExtraFieldUtils;->mergeLocalFileDataData([Lorg/apache/tools/zip/ZipExtraField;)[B

    move-result-object v0

    invoke-super {p0, v0}, Ljava/util/zip/ZipEntry;->setExtra([B)V

    return-void
.end method

.method public setExtra([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 524
    :try_start_0
    sget-object v0, Lorg/apache/tools/zip/ExtraFieldUtils$UnparseableExtraField;->READ:Lorg/apache/tools/zip/ExtraFieldUtils$UnparseableExtraField;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lorg/apache/tools/zip/ExtraFieldUtils;->parse([BZLorg/apache/tools/zip/ExtraFieldUtils$UnparseableExtraField;)[Lorg/apache/tools/zip/ZipExtraField;

    move-result-object p1

    .line 526
    invoke-direct {p0, p1, v1}, Lorg/apache/tools/zip/ZipEntry;->mergeExtraFields([Lorg/apache/tools/zip/ZipExtraField;Z)V
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 529
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error parsing extra fields for entry: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 530
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/zip/ZipException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setExtraFields([Lorg/apache/tools/zip/ZipExtraField;)V
    .locals 6

    .line 311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 312
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    .line 313
    instance-of v5, v4, Lorg/apache/tools/zip/UnparseableExtraFieldData;

    if-eqz v5, :cond_0

    .line 314
    check-cast v4, Lorg/apache/tools/zip/UnparseableExtraFieldData;

    iput-object v4, p0, Lorg/apache/tools/zip/ZipEntry;->unparseableExtra:Lorg/apache/tools/zip/UnparseableExtraFieldData;

    goto :goto_1

    .line 316
    :cond_0
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-array p1, v2, [Lorg/apache/tools/zip/ZipExtraField;

    .line 319
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/tools/zip/ZipExtraField;

    iput-object p1, p0, Lorg/apache/tools/zip/ZipEntry;->extraFields:[Lorg/apache/tools/zip/ZipExtraField;

    .line 320
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->setExtra()V

    return-void
.end method

.method public setGeneralPurposeBit(Lorg/apache/tools/zip/GeneralPurposeBit;)V
    .locals 0

    .line 720
    iput-object p1, p0, Lorg/apache/tools/zip/ZipEntry;->gpb:Lorg/apache/tools/zip/GeneralPurposeBit;

    return-void
.end method

.method public setInternalAttributes(I)V
    .locals 0

    .line 229
    iput p1, p0, Lorg/apache/tools/zip/ZipEntry;->internalAttributes:I

    return-void
.end method

.method public setMethod(I)V
    .locals 3

    if-ltz p1, :cond_0

    .line 209
    iput p1, p0, Lorg/apache/tools/zip/ZipEntry;->method:I

    return-void

    .line 206
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ZIP compression method can not be negative: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setName(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 626
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->getPlatform()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x5c

    const/16 v1, 0x2f

    .line 627
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 629
    :cond_0
    iput-object p1, p0, Lorg/apache/tools/zip/ZipEntry;->name:Ljava/lang/String;

    return-void
.end method

.method protected setName(Ljava/lang/String;[B)V
    .locals 0

    .line 667
    invoke-virtual {p0, p1}, Lorg/apache/tools/zip/ZipEntry;->setName(Ljava/lang/String;)V

    .line 668
    iput-object p2, p0, Lorg/apache/tools/zip/ZipEntry;->rawName:[B

    return-void
.end method

.method protected setPlatform(I)V
    .locals 0

    .line 301
    iput p1, p0, Lorg/apache/tools/zip/ZipEntry;->platform:I

    return-void
.end method

.method public setSize(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 654
    iput-wide p1, p0, Lorg/apache/tools/zip/ZipEntry;->size:J

    return-void

    .line 652
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid entry size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setUnixMode(I)V
    .locals 2

    shl-int/lit8 v0, p1, 0x10

    and-int/lit16 p1, p1, 0x80

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    or-int/2addr p1, v0

    .line 265
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v1, 0x10

    :cond_1
    or-int/2addr p1, v1

    int-to-long v0, p1

    .line 261
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/zip/ZipEntry;->setExternalAttributes(J)V

    const/4 p1, 0x3

    .line 267
    iput p1, p0, Lorg/apache/tools/zip/ZipEntry;->platform:I

    return-void
.end method
