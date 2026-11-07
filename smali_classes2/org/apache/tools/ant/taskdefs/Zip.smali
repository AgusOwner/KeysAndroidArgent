.class public Lorg/apache/tools/ant/taskdefs/Zip;
.super Lorg/apache/tools/ant/taskdefs/MatchingTask;
.source "Zip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/Zip$UnicodeExtraField;,
        Lorg/apache/tools/ant/taskdefs/Zip$Zip64ModeAttribute;,
        Lorg/apache/tools/ant/taskdefs/Zip$Duplicate;,
        Lorg/apache/tools/ant/taskdefs/Zip$WhenEmpty;,
        Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x2000

.field private static final CURRENT_ZIP_EXTRA:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[",
            "Lorg/apache/tools/zip/ZipExtraField;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_CRC:J

.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

.field private static final HAVE_NON_FILE_SET_RESOURCES_TO_ADD:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final MISSING_DIR_PROVIDER:Lorg/apache/tools/ant/util/ResourceUtils$ResourceSelectorProvider;

.field private static final MISSING_SELECTOR:Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;

.field private static final ROUNDUP_MILLIS:I = 0x7cf

.field private static final ZIP_FILE_TIMESTAMP_GRANULARITY:I = 0x7d0


# instance fields
.field protected addedDirs:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final addedFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private addingNewFiles:Z

.field protected archiveType:Ljava/lang/String;

.field private baseDir:Ljava/io/File;

.field private comment:Ljava/lang/String;

.field private createUnicodeExtraFields:Lorg/apache/tools/ant/taskdefs/Zip$UnicodeExtraField;

.field private doCompress:Z

.field private doFilesonly:Z

.field private doUpdate:Z

.field protected doubleFilePass:Z

.field protected duplicate:Ljava/lang/String;

.field protected emptyBehavior:Ljava/lang/String;

.field private encoding:Ljava/lang/String;

.field protected entries:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fallBackToUTF8:Z

.field private final filesetsFromGroupfilesets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/types/ZipFileSet;",
            ">;"
        }
    .end annotation
.end field

.field private fixedModTime:Ljava/lang/String;

.field private final groupfilesets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/types/FileSet;",
            ">;"
        }
    .end annotation
.end field

.field private keepCompression:Z

.field private level:I

.field private modTimeMillis:J

.field private preserve0Permissions:Z

.field private final resources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/types/ResourceCollection;",
            ">;"
        }
    .end annotation
.end field

.field private roundUp:Z

.field private savedDoUpdate:Z

.field protected skipWriting:Z

.field private updatedFile:Z

.field private useLanguageEncodingFlag:Z

.field private zip64Mode:Lorg/apache/tools/ant/taskdefs/Zip$Zip64ModeAttribute;

.field protected zipFile:Ljava/io/File;

.field private zs:Lorg/apache/tools/ant/types/ZipScanner;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 87
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Zip;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    .line 90
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    sput-wide v0, Lorg/apache/tools/ant/taskdefs/Zip;->EMPTY_CRC:J

    .line 92
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Zip$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/Zip$$ExternalSyntheticLambda6;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Zip;->MISSING_SELECTOR:Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;

    .line 96
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Zip$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/Zip$$ExternalSyntheticLambda7;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Zip;->MISSING_DIR_PROVIDER:Lorg/apache/tools/ant/util/ResourceUtils$ResourceSelectorProvider;

    .line 1296
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Zip$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/Zip$$ExternalSyntheticLambda8;-><init>()V

    new-instance v1, Lorg/apache/tools/ant/taskdefs/Zip$$ExternalSyntheticThreadLocal10;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/taskdefs/Zip$$ExternalSyntheticThreadLocal10;-><init>(Ljava/util/function/Supplier;)V

    sput-object v1, Lorg/apache/tools/ant/taskdefs/Zip;->HAVE_NON_FILE_SET_RESOURCES_TO_ADD:Ljava/lang/ThreadLocal;

    .line 1732
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Zip;->CURRENT_ZIP_EXTRA:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 78
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/MatchingTask;-><init>()V

    .line 102
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->entries:Ljava/util/Hashtable;

    .line 103
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->groupfilesets:Ljava/util/List;

    .line 104
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->filesetsFromGroupfilesets:Ljava/util/List;

    const-string v0, "add"

    .line 105
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->duplicate:Ljava/lang/String;

    const/4 v0, 0x1

    .line 106
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doCompress:Z

    const/4 v1, 0x0

    .line 107
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doUpdate:Z

    .line 109
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->savedDoUpdate:Z

    .line 110
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doFilesonly:Z

    const-string v2, "zip"

    .line 111
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Zip;->archiveType:Ljava/lang/String;

    const-string v2, "skip"

    .line 113
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Zip;->emptyBehavior:Ljava/lang/String;

    .line 114
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Zip;->resources:Ljava/util/List;

    .line 115
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Zip;->addedDirs:Ljava/util/Hashtable;

    .line 116
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Zip;->addedFiles:Ljava/util/List;

    const/4 v2, 0x0

    .line 118
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Zip;->fixedModTime:Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 119
    iput-wide v2, p0, Lorg/apache/tools/ant/taskdefs/Zip;->modTimeMillis:J

    .line 130
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doubleFilePass:Z

    .line 138
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->skipWriting:Z

    .line 156
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->updatedFile:Z

    .line 162
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->addingNewFiles:Z

    .line 176
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->keepCompression:Z

    .line 184
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->roundUp:Z

    const-string v2, ""

    .line 190
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Zip;->comment:Ljava/lang/String;

    const/4 v2, -0x1

    .line 192
    iput v2, p0, Lorg/apache/tools/ant/taskdefs/Zip;->level:I

    .line 198
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->preserve0Permissions:Z

    .line 205
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->useLanguageEncodingFlag:Z

    .line 212
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Zip$UnicodeExtraField;->NEVER:Lorg/apache/tools/ant/taskdefs/Zip$UnicodeExtraField;

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->createUnicodeExtraFields:Lorg/apache/tools/ant/taskdefs/Zip$UnicodeExtraField;

    .line 221
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->fallBackToUTF8:Z

    .line 228
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Zip$Zip64ModeAttribute;->AS_NEEDED:Lorg/apache/tools/ant/taskdefs/Zip$Zip64ModeAttribute;

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->zip64Mode:Lorg/apache/tools/ant/taskdefs/Zip$Zip64ModeAttribute;

    return-void
.end method

.method private addDirectoryResource(Lorg/apache/tools/ant/types/Resource;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lorg/apache/tools/zip/ZipOutputStream;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "/"

    .line 1026
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1027
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1030
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    const/16 v1, 0x2f

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    .line 1032
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object v2, p0

    move-object v3, p4

    move-object v5, p5

    move-object v6, p3

    move v7, p6

    invoke-virtual/range {v2 .. v7}, Lorg/apache/tools/ant/taskdefs/Zip;->addParentDirs(Ljava/io/File;Ljava/lang/String;Lorg/apache/tools/zip/ZipOutputStream;Ljava/lang/String;I)V

    .line 1035
    :cond_1
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1036
    instance-of p2, p1, Lorg/apache/tools/ant/types/resources/ZipResource;

    if-eqz p2, :cond_2

    .line 1037
    move-object p2, p1

    check-cast p2, Lorg/apache/tools/ant/types/resources/ZipResource;

    invoke-virtual {p2}, Lorg/apache/tools/ant/types/resources/ZipResource;->getExtraFields()[Lorg/apache/tools/zip/ZipExtraField;

    move-result-object p2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    move-object v5, p2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p5

    move v4, p7

    .line 1035
    invoke-virtual/range {v0 .. v5}, Lorg/apache/tools/ant/taskdefs/Zip;->zipDir(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/zip/ZipOutputStream;Ljava/lang/String;I[Lorg/apache/tools/zip/ZipExtraField;)V

    return-void
.end method

.method private addResource(Lorg/apache/tools/ant/types/Resource;Ljava/lang/String;Ljava/lang/String;Lorg/apache/tools/zip/ZipOutputStream;ILorg/apache/tools/zip/ZipFile;Ljava/io/File;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v10, p0

    move-object v0, p1

    move-object v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    if-eqz v3, :cond_2

    .line 1069
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/tools/zip/ZipFile;->getEntry(Ljava/lang/String;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1072
    iget-boolean v11, v10, Lorg/apache/tools/ant/taskdefs/Zip;->doCompress:Z

    .line 1073
    iget-boolean v4, v10, Lorg/apache/tools/ant/taskdefs/Zip;->keepCompression:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 1074
    invoke-virtual {v0}, Lorg/apache/tools/zip/ZipEntry;->getMethod()I

    move-result v4

    const/16 v6, 0x8

    if-ne v4, v6, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iput-boolean v4, v10, Lorg/apache/tools/ant/taskdefs/Zip;->doCompress:Z

    .line 1076
    :cond_1
    :try_start_0
    new-instance v12, Ljava/io/BufferedInputStream;

    invoke-virtual {v3, v0}, Lorg/apache/tools/zip/ZipFile;->getInputStream(Lorg/apache/tools/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v12, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1077
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lorg/apache/tools/zip/ZipEntry;->getTime()J

    move-result-wide v6

    .line 1078
    invoke-virtual {v0, v5}, Lorg/apache/tools/zip/ZipEntry;->getExtraFields(Z)[Lorg/apache/tools/zip/ZipExtraField;

    move-result-object v9

    move-object v1, p0

    move-object v2, v12

    move-object/from16 v3, p4

    move-wide v5, v6

    move-object/from16 v7, p7

    move/from16 v8, p5

    .line 1077
    invoke-virtual/range {v1 .. v9}, Lorg/apache/tools/ant/taskdefs/Zip;->zipFile(Ljava/io/InputStream;Lorg/apache/tools/zip/ZipOutputStream;Ljava/lang/String;JLjava/io/File;I[Lorg/apache/tools/zip/ZipExtraField;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1079
    :try_start_2
    invoke-virtual {v12}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1080
    iput-boolean v11, v10, Lorg/apache/tools/ant/taskdefs/Zip;->doCompress:Z

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 1076
    :try_start_3
    invoke-virtual {v12}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    .line 1080
    iput-boolean v11, v10, Lorg/apache/tools/ant/taskdefs/Zip;->doCompress:Z

    .line 1081
    throw v0

    .line 1084
    :cond_2
    new-instance v11, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v11, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1085
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getLastModified()J

    move-result-wide v5

    .line 1086
    instance-of v1, v0, Lorg/apache/tools/ant/types/resources/ZipResource;

    if-eqz v1, :cond_3

    .line 1087
    check-cast v0, Lorg/apache/tools/ant/types/resources/ZipResource;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/ZipResource;->getExtraFields()[Lorg/apache/tools/zip/ZipExtraField;

    move-result-object v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    move-object v9, v0

    move-object v1, p0

    move-object v2, v11

    move-object/from16 v3, p4

    move-object/from16 v7, p7

    move/from16 v8, p5

    .line 1085
    invoke-virtual/range {v1 .. v9}, Lorg/apache/tools/ant/taskdefs/Zip;->zipFile(Ljava/io/InputStream;Lorg/apache/tools/zip/ZipOutputStream;Ljava/lang/String;JLjava/io/File;I[Lorg/apache/tools/zip/ZipExtraField;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1088
    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->close()V

    :cond_4
    :goto_3
    return-void

    :catchall_3
    move-exception v0

    move-object v1, v0

    .line 1084
    :try_start_6
    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v1
.end method

.method private checkAttributesAndElements()V
    .locals 4

    .line 838
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->baseDir:Ljava/io/File;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->resources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->groupfilesets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "zip"

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->archiveType:Ljava/lang/String;

    .line 839
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 840
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "basedir attribute must be set, or at least one resource collection must be given!"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 844
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->zipFile:Ljava/io/File;

    if-eqz v0, :cond_7

    .line 849
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->fixedModTime:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 851
    :try_start_0
    invoke-static {v0}, Lorg/apache/tools/ant/util/DateUtils;->parseLenientDateTime(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->modTimeMillis:J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 855
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Zip;->roundUp:Z

    if-eqz v2, :cond_2

    const-wide/16 v2, 0x7cf

    add-long/2addr v0, v2

    .line 856
    iput-wide v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->modTimeMillis:J

    goto :goto_1

    .line 853
    :catch_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->fixedModTime:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Failed to parse date string %s."

    invoke-direct {v0, v2, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 860
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->zipFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->zipFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    .line 861
    :cond_3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->zipFile:Ljava/io/File;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s is not a file."

    invoke-direct {v0, v2, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 864
    :cond_4
    :goto_2
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->zipFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->zipFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    .line 865
    :cond_5
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->zipFile:Ljava/io/File;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s is read-only."

    invoke-direct {v0, v2, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_6
    :goto_3
    return-void

    .line 845
    :cond_7
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->archiveType:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "You must specify the %s file to create!"

    invoke-direct {v0, v2, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method private closeZout(Lorg/apache/tools/zip/ZipOutputStream;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 819
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    if-nez p2, :cond_1

    :goto_0
    return-void

    .line 831
    :cond_1
    throw p1
.end method

.method private getUnixMode(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/zip/ZipFile;I)I
    .locals 0

    if-eqz p2, :cond_2

    .line 1048
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/tools/zip/ZipFile;->getEntry(Ljava/lang/String;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object p1

    .line 1049
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getUnixMode()I

    move-result p1

    if-eqz p1, :cond_0

    const/16 p2, 0x4000

    if-ne p1, p2, :cond_1

    .line 1050
    :cond_0
    iget-boolean p2, p0, Lorg/apache/tools/ant/taskdefs/Zip;->preserve0Permissions:Z

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    move p3, p1

    goto :goto_0

    .line 1054
    :cond_2
    instance-of p2, p1, Lorg/apache/tools/ant/types/resources/ArchiveResource;

    if-eqz p2, :cond_3

    .line 1055
    check-cast p1, Lorg/apache/tools/ant/types/resources/ArchiveResource;

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->getMode()I

    move-result p3

    :cond_3
    :goto_0
    return p3
.end method

.method private declared-synchronized getZipScanner()Lorg/apache/tools/ant/types/ZipScanner;
    .locals 2

    monitor-enter p0

    .line 1208
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->zs:Lorg/apache/tools/ant/types/ZipScanner;

    if-nez v0, :cond_0

    .line 1209
    new-instance v0, Lorg/apache/tools/ant/types/ZipScanner;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/ZipScanner;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->zs:Lorg/apache/tools/ant/types/ZipScanner;

    .line 1210
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/ZipScanner;->setEncoding(Ljava/lang/String;)V

    .line 1211
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->zs:Lorg/apache/tools/ant/types/ZipScanner;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->zipFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/ZipScanner;->setSrc(Ljava/io/File;)V

    .line 1213
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->zs:Lorg/apache/tools/ant/types/ZipScanner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected static final isEmpty([[Lorg/apache/tools/ant/types/Resource;)Z
    .locals 4

    .line 2000
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 2001
    array-length v3, v3

    if-lez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$executeMain$2(I)[Lorg/apache/tools/ant/types/Resource;
    .locals 0

    .line 751
    new-array p0, p0, [Lorg/apache/tools/ant/types/Resource;

    return-object p0
.end method

.method static synthetic lambda$selectResources$5(I)[Lorg/apache/tools/ant/types/Resource;
    .locals 0

    .line 2054
    new-array p0, p0, [Lorg/apache/tools/ant/types/Resource;

    return-object p0
.end method

.method static synthetic lambda$static$0(Lorg/apache/tools/ant/types/Resource;)Z
    .locals 0

    .line 93
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->isExists()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic lambda$static$1(Lorg/apache/tools/ant/types/Resource;)Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;
    .locals 0

    .line 96
    sget-object p0, Lorg/apache/tools/ant/taskdefs/Zip;->MISSING_SELECTOR:Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;

    return-object p0
.end method

.method static synthetic lambda$static$3()Ljava/lang/Boolean;
    .locals 1

    .line 1296
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method private processDoUpdate()V
    .locals 2

    .line 873
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doUpdate:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->zipFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 874
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doUpdate:Z

    .line 875
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ignoring update attribute as "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->archiveType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " doesn\'t exist."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Zip;->logWhenWriting(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private processGroupFilesets()V
    .locals 9

    .line 883
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->groupfilesets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/FileSet;

    const-string v2, "Processing groupfileset "

    const/4 v3, 0x3

    .line 884
    invoke-virtual {p0, v2, v3}, Lorg/apache/tools/ant/taskdefs/Zip;->logWhenWriting(Ljava/lang/String;I)V

    .line 885
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/FileSet;->getDirectoryScanner(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v1

    .line 886
    invoke-interface {v1}, Lorg/apache/tools/ant/FileScanner;->getBasedir()Ljava/io/File;

    move-result-object v2

    .line 887
    invoke-interface {v1}, Lorg/apache/tools/ant/FileScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v1, v5

    .line 888
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Adding file "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to fileset"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7, v3}, Lorg/apache/tools/ant/taskdefs/Zip;->logWhenWriting(Ljava/lang/String;I)V

    .line 890
    new-instance v7, Lorg/apache/tools/ant/types/ZipFileSet;

    invoke-direct {v7}, Lorg/apache/tools/ant/types/ZipFileSet;-><init>()V

    .line 891
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/tools/ant/types/ZipFileSet;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 892
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lorg/apache/tools/ant/types/ZipFileSet;->setSrc(Ljava/io/File;)V

    .line 893
    invoke-virtual {p0, v7}, Lorg/apache/tools/ant/taskdefs/Zip;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 894
    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/Zip;->filesetsFromGroupfilesets:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private renameFile()Ljava/io/File;
    .locals 8

    .line 800
    sget-object v7, Lorg/apache/tools/ant/taskdefs/Zip;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    .line 801
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    const-string v2, "zip"

    const-string v3, ".tmp"

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->zipFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, v7

    .line 800
    invoke-virtual/range {v0 .. v6}, Lorg/apache/tools/ant/util/FileUtils;->createTempFile(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;ZZ)Ljava/io/File;

    move-result-object v0

    .line 803
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->zipFile:Ljava/io/File;

    invoke-virtual {v7, v1, v0}, Lorg/apache/tools/ant/util/FileUtils;->rename(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 805
    :catch_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->zipFile:Ljava/io/File;

    .line 807
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Unable to rename old file (%s) to temporary file"

    invoke-direct {v0, v2, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method private selectOutOfDateResources([Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/util/FileNameMapper;)[Lorg/apache/tools/ant/types/Resource;
    .locals 6

    .line 1548
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Zip;->selectFileResources([Lorg/apache/tools/ant/types/Resource;)[Lorg/apache/tools/ant/types/Resource;

    move-result-object v1

    .line 1551
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->getZipScanner()Lorg/apache/tools/ant/types/ZipScanner;

    move-result-object v3

    const-wide/16 v4, 0x7d0

    move-object v0, p0

    move-object v2, p2

    .line 1550
    invoke-static/range {v0 .. v5}, Lorg/apache/tools/ant/util/ResourceUtils;->selectOutOfDateSources(Lorg/apache/tools/ant/ProjectComponent;[Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/util/FileNameMapper;Lorg/apache/tools/ant/types/ResourceFactory;J)[Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    .line 1553
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doFilesonly:Z

    if-nez v1, :cond_0

    .line 1554
    new-instance v1, Lorg/apache/tools/ant/types/resources/Union;

    invoke-direct {v1}, Lorg/apache/tools/ant/types/resources/Union;-><init>()V

    .line 1555
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Zip;->selectDirectoryResources([Lorg/apache/tools/ant/types/Resource;)[Lorg/apache/tools/ant/types/Resource;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/apache/tools/ant/types/resources/Union;->addAll(Ljava/util/Collection;)V

    .line 1558
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->getZipScanner()Lorg/apache/tools/ant/types/ZipScanner;

    move-result-object p1

    sget-object v2, Lorg/apache/tools/ant/taskdefs/Zip;->MISSING_DIR_PROVIDER:Lorg/apache/tools/ant/util/ResourceUtils$ResourceSelectorProvider;

    .line 1557
    invoke-static {p0, v1, p2, p1, v2}, Lorg/apache/tools/ant/util/ResourceUtils;->selectSources(Lorg/apache/tools/ant/ProjectComponent;Lorg/apache/tools/ant/types/ResourceCollection;Lorg/apache/tools/ant/util/FileNameMapper;Lorg/apache/tools/ant/types/ResourceFactory;Lorg/apache/tools/ant/util/ResourceUtils$ResourceSelectorProvider;)Lorg/apache/tools/ant/types/ResourceCollection;

    move-result-object p1

    .line 1560
    invoke-interface {p1}, Lorg/apache/tools/ant/types/ResourceCollection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 1561
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1562
    check-cast p1, Lorg/apache/tools/ant/types/resources/Union;

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/resources/Union;->listResources()[Lorg/apache/tools/ant/types/Resource;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1563
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1564
    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, [Lorg/apache/tools/ant/types/Resource;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .locals 1

    .line 353
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->resources:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addFileset(Lorg/apache/tools/ant/types/FileSet;)V
    .locals 0

    .line 335
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Zip;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    return-void
.end method

.method protected final addParentDirs(Ljava/io/File;Ljava/lang/String;Lorg/apache/tools/zip/ZipOutputStream;Ljava/lang/String;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1920
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doFilesonly:Z

    if-nez v0, :cond_3

    .line 1921
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 1922
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    const/16 v2, 0x2f

    add-int/lit8 v1, v1, -0x1

    .line 1924
    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    .line 1925
    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1926
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Zip;->addedDirs:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 1929
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1932
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    .line 1933
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 1936
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_2

    .line 1938
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1940
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v1, p3, p2, p5}, Lorg/apache/tools/ant/taskdefs/Zip;->zipDir(Ljava/io/File;Lorg/apache/tools/zip/ZipOutputStream;Ljava/lang/String;I)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method protected final addResources(Lorg/apache/tools/ant/types/FileSet;[Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/zip/ZipOutputStream;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    move-object/from16 v10, p2

    .line 929
    instance-of v1, v0, Lorg/apache/tools/ant/types/ArchiveFileSet;

    if-eqz v1, :cond_0

    .line 930
    move-object v1, v0

    check-cast v1, Lorg/apache/tools/ant/types/ArchiveFileSet;

    .line 931
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/Zip;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/ArchiveFileSet;->getPrefix(Lorg/apache/tools/ant/Project;)Ljava/lang/String;

    move-result-object v2

    .line 932
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/Zip;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/tools/ant/types/ArchiveFileSet;->getFullpath(Lorg/apache/tools/ant/Project;)Ljava/lang/String;

    move-result-object v3

    .line 933
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/Zip;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/tools/ant/types/ArchiveFileSet;->getDirMode(Lorg/apache/tools/ant/Project;)I

    move-result v4

    .line 934
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/Zip;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/apache/tools/ant/types/ArchiveFileSet;->getFileMode(Lorg/apache/tools/ant/Project;)I

    move-result v5

    move-object v12, v1

    move-object v13, v3

    move v14, v4

    move v15, v5

    goto :goto_0

    :cond_0
    const-string v2, ""

    const/16 v4, 0x41ed

    const v5, 0x81a4

    move-object v13, v2

    move v14, v4

    move v15, v5

    const/4 v12, 0x0

    .line 937
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 938
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Both prefix and fullpath attributes must not be set on the same fileset."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 942
    :cond_2
    :goto_1
    array-length v1, v10

    const/4 v7, 0x1

    if-eq v1, v7, :cond_4

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    .line 943
    :cond_3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "fullpath attribute may only be specified for filesets that specify a single file."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 947
    :cond_4
    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "/"

    .line 948
    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "\\"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 949
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_5
    move-object v8, v2

    const/4 v2, 0x0

    const-string v5, ""

    move-object/from16 v1, p0

    move-object v3, v8

    move-object/from16 v4, p3

    move v6, v14

    .line 951
    invoke-virtual/range {v1 .. v6}, Lorg/apache/tools/ant/taskdefs/Zip;->addParentDirs(Ljava/io/File;Ljava/lang/String;Lorg/apache/tools/zip/ZipOutputStream;Ljava/lang/String;I)V

    goto :goto_3

    :cond_6
    move-object v8, v2

    :goto_3
    const/4 v1, 0x0

    if-eqz v12, :cond_9

    .line 959
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/Zip;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {v12, v2}, Lorg/apache/tools/ant/types/ArchiveFileSet;->getSrc(Lorg/apache/tools/ant/Project;)Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_7

    goto :goto_4

    .line 962
    :cond_7
    instance-of v0, v12, Lorg/apache/tools/ant/types/ZipFileSet;

    if-eqz v0, :cond_8

    .line 963
    new-instance v0, Lorg/apache/tools/zip/ZipFile;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/Zip;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {v12, v2}, Lorg/apache/tools/ant/types/ArchiveFileSet;->getSrc(Lorg/apache/tools/ant/Project;)Ljava/io/File;

    move-result-object v2

    iget-object v3, v9, Lorg/apache/tools/ant/taskdefs/Zip;->encoding:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lorg/apache/tools/zip/ZipFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v7, v0

    move/from16 v16, v1

    const/4 v0, 0x0

    goto :goto_6

    :cond_8
    move/from16 v16, v1

    const/4 v0, 0x0

    goto :goto_5

    .line 961
    :cond_9
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/Zip;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/FileSet;->getDir(Lorg/apache/tools/ant/Project;)Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move/from16 v16, v7

    :goto_5
    const/4 v7, 0x0

    .line 966
    :goto_6
    :try_start_1
    array-length v6, v10

    move v5, v1

    :goto_7
    if-ge v5, v6, :cond_12

    aget-object v4, v10, v5

    .line 968
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 969
    invoke-virtual {v4}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_a
    move-object v1, v13

    .line 973
    :goto_8
    sget-char v2, Ljava/io/File;->separatorChar:C

    const/16 v3, 0x2f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 975
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    :goto_9
    move/from16 v18, v5

    move/from16 v19, v6

    move-object v11, v7

    move-object/from16 v21, v8

    goto/16 :goto_d

    .line 979
    :cond_b
    invoke-virtual {v4}, Lorg/apache/tools/ant/types/Resource;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 980
    iget-boolean v1, v9, Lorg/apache/tools/ant/taskdefs/Zip;->doFilesonly:Z

    if-eqz v1, :cond_c

    goto :goto_9

    :cond_c
    if-eqz v12, :cond_d

    .line 983
    invoke-virtual {v12}, Lorg/apache/tools/ant/types/ArchiveFileSet;->hasDirModeBeenSet()Z

    move-result v1

    if-eqz v1, :cond_d

    move/from16 v17, v14

    goto :goto_a

    .line 984
    :cond_d
    invoke-direct {v9, v4, v7, v14}, Lorg/apache/tools/ant/taskdefs/Zip;->getUnixMode(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/zip/ZipFile;I)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move/from16 v17, v1

    :goto_a
    move-object/from16 v1, p0

    move-object v2, v4

    move-object v4, v8

    move/from16 v18, v5

    move-object v5, v0

    move/from16 v19, v6

    move-object/from16 v6, p3

    move-object v11, v7

    move v7, v14

    move-object/from16 p1, v8

    move/from16 v8, v17

    .line 985
    :try_start_2
    invoke-direct/range {v1 .. v8}, Lorg/apache/tools/ant/taskdefs/Zip;->addDirectoryResource(Lorg/apache/tools/ant/types/Resource;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lorg/apache/tools/zip/ZipOutputStream;II)V

    move-object/from16 v21, p1

    goto/16 :goto_d

    :cond_e
    move/from16 v18, v5

    move/from16 v19, v6

    move-object v11, v7

    move-object/from16 p1, v8

    move-object/from16 v1, p0

    move-object v2, v0

    move-object v7, v3

    move-object v8, v4

    move-object/from16 v4, p3

    move-object/from16 v5, p1

    move v6, v14

    .line 991
    invoke-virtual/range {v1 .. v6}, Lorg/apache/tools/ant/taskdefs/Zip;->addParentDirs(Ljava/io/File;Ljava/lang/String;Lorg/apache/tools/zip/ZipOutputStream;Ljava/lang/String;I)V

    if-eqz v16, :cond_f

    .line 994
    sget-object v1, Lorg/apache/tools/ant/taskdefs/Zip;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    .line 995
    invoke-virtual {v8}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v2

    .line 994
    invoke-virtual {v1, v0, v2}, Lorg/apache/tools/ant/util/FileUtils;->resolveFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 996
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, p1

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v5, p3

    invoke-virtual {v9, v1, v5, v2, v15}, Lorg/apache/tools/ant/taskdefs/Zip;->zipFile(Ljava/io/File;Lorg/apache/tools/zip/ZipOutputStream;Ljava/lang/String;I)V

    move-object/from16 v21, v6

    goto :goto_d

    :cond_f
    move-object/from16 v6, p1

    move-object/from16 v5, p3

    if-eqz v12, :cond_10

    .line 999
    invoke-virtual {v12}, Lorg/apache/tools/ant/types/ArchiveFileSet;->hasFileModeBeenSet()Z

    move-result v1

    if-eqz v1, :cond_10

    move/from16 v17, v15

    goto :goto_b

    .line 1000
    :cond_10
    invoke-direct {v9, v8, v11, v15}, Lorg/apache/tools/ant/taskdefs/Zip;->getUnixMode(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/zip/ZipFile;I)I

    move-result v1

    move/from16 v17, v1

    :goto_b
    if-nez v12, :cond_11

    const/16 v20, 0x0

    goto :goto_c

    .line 1005
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/Zip;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v12, v1}, Lorg/apache/tools/ant/types/ArchiveFileSet;->getSrc(Lorg/apache/tools/ant/Project;)Ljava/io/File;

    move-result-object v1

    move-object/from16 v20, v1

    :goto_c
    move-object/from16 v1, p0

    move-object v2, v8

    move-object v3, v7

    move-object v4, v6

    move-object/from16 v5, p3

    move-object/from16 v21, v6

    move/from16 v6, v17

    move-object v7, v11

    move-object/from16 v8, v20

    .line 1002
    invoke-direct/range {v1 .. v8}, Lorg/apache/tools/ant/taskdefs/Zip;->addResource(Lorg/apache/tools/ant/types/Resource;Ljava/lang/String;Ljava/lang/String;Lorg/apache/tools/zip/ZipOutputStream;ILorg/apache/tools/zip/ZipFile;Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_d
    add-int/lit8 v5, v18, 0x1

    move-object v7, v11

    move/from16 v6, v19

    move-object/from16 v8, v21

    goto/16 :goto_7

    :catchall_0
    move-exception v0

    goto :goto_e

    :cond_12
    move-object v11, v7

    if-eqz v11, :cond_13

    .line 1011
    invoke-virtual {v11}, Lorg/apache/tools/zip/ZipFile;->close()V

    :cond_13
    return-void

    :catchall_1
    move-exception v0

    move-object v11, v7

    goto :goto_e

    :catchall_2
    move-exception v0

    const/4 v11, 0x0

    :goto_e
    if-eqz v11, :cond_14

    invoke-virtual {v11}, Lorg/apache/tools/zip/ZipFile;->close()V

    .line 1013
    :cond_14
    throw v0
.end method

.method protected final addResources(Lorg/apache/tools/ant/types/ResourceCollection;[Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/zip/ZipOutputStream;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1107
    instance-of v0, p1, Lorg/apache/tools/ant/types/FileSet;

    if-eqz v0, :cond_0

    .line 1108
    check-cast p1, Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/tools/ant/taskdefs/Zip;->addResources(Lorg/apache/tools/ant/types/FileSet;[Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/zip/ZipOutputStream;)V

    return-void

    .line 1111
    :cond_0
    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_7

    aget-object v2, p2, v0

    .line 1112
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    goto/16 :goto_2

    .line 1116
    :cond_1
    sget-char v3, Ljava/io/File;->separatorChar:C

    const/16 v4, 0x2f

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 1118
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    .line 1121
    :cond_2
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Resource;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doFilesonly:Z

    if-eqz v1, :cond_3

    goto :goto_2

    .line 1125
    :cond_3
    const-class v1, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/resources/FileProvider;

    if-eqz v1, :cond_4

    .line 1127
    invoke-static {v1}, Lorg/apache/tools/ant/util/ResourceUtils;->asFileResource(Lorg/apache/tools/ant/types/resources/FileProvider;)Lorg/apache/tools/ant/types/resources/FileResource;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/tools/ant/types/resources/FileResource;->getBaseDir()Ljava/io/File;

    move-result-object v4

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :goto_1
    move-object v6, v4

    .line 1130
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Resource;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, ""

    const/16 v7, 0x41ed

    const/16 v8, 0x41ed

    move-object v1, p0

    move-object v5, v6

    move-object v6, p3

    .line 1131
    invoke-direct/range {v1 .. v8}, Lorg/apache/tools/ant/taskdefs/Zip;->addDirectoryResource(Lorg/apache/tools/ant/types/Resource;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lorg/apache/tools/zip/ZipOutputStream;II)V

    goto :goto_2

    :cond_5
    const-string v9, ""

    const/16 v10, 0x41ed

    move-object v5, p0

    move-object v7, v3

    move-object v8, p3

    .line 1136
    invoke-virtual/range {v5 .. v10}, Lorg/apache/tools/ant/taskdefs/Zip;->addParentDirs(Ljava/io/File;Ljava/lang/String;Lorg/apache/tools/zip/ZipOutputStream;Ljava/lang/String;I)V

    if-eqz v1, :cond_6

    .line 1140
    invoke-interface {v1}, Lorg/apache/tools/ant/types/resources/FileProvider;->getFile()Ljava/io/File;

    move-result-object v1

    const v2, 0x81a4

    .line 1141
    invoke-virtual {p0, v1, p3, v3, v2}, Lorg/apache/tools/ant/taskdefs/Zip;->zipFile(Ljava/io/File;Lorg/apache/tools/zip/ZipOutputStream;Ljava/lang/String;I)V

    goto :goto_2

    :cond_6
    const-string v4, ""

    const v6, 0x81a4

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v5, p3

    .line 1143
    invoke-direct/range {v1 .. v8}, Lorg/apache/tools/ant/taskdefs/Zip;->addResource(Lorg/apache/tools/ant/types/Resource;Ljava/lang/String;Ljava/lang/String;Lorg/apache/tools/zip/ZipOutputStream;ILorg/apache/tools/zip/ZipFile;Ljava/io/File;)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method public addZipGroupFileset(Lorg/apache/tools/ant/types/FileSet;)V
    .locals 1

    .line 361
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->groupfilesets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addZipfileset(Lorg/apache/tools/ant/types/ZipFileSet;)V
    .locals 0

    .line 344
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Zip;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    return-void
.end method

.method protected cleanUp()V
    .locals 2

    .line 1960
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->addedDirs:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 1961
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->addedFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1962
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->entries:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    const/4 v0, 0x0

    .line 1963
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->addingNewFiles:Z

    .line 1964
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->savedDoUpdate:Z

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doUpdate:Z

    .line 1965
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->resources:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->filesetsFromGroupfilesets:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1966
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->filesetsFromGroupfilesets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1967
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Zip;->HAVE_NON_FILE_SET_RESOURCES_TO_ADD:Ljava/lang/ThreadLocal;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method protected createEmptyZip(Ljava/io/File;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 1181
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->skipWriting:Z

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 1182
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Note: creating empty "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Zip;->archiveType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " archive "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Zip;->log(Ljava/lang/String;I)V

    .line 1185
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    const/4 v0, 0x0

    new-array v2, v0, [Ljava/nio/file/OpenOption;

    invoke-static {p1, v2}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x16

    :try_start_1
    new-array v2, v2, [B

    const/16 v3, 0x50

    aput-byte v3, v2, v0

    const/16 v0, 0x4b

    const/4 v3, 0x1

    aput-byte v0, v2, v3

    const/4 v0, 0x5

    aput-byte v0, v2, v1

    const/4 v0, 0x3

    const/4 v1, 0x6

    aput-byte v1, v2, v0

    .line 1195
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 1196
    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    return v3

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_2

    .line 1185
    :try_start_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 1197
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not create empty ZIP archive ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1198
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1199
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method public execute()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 622
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doubleFilePass:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 623
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->skipWriting:Z

    .line 624
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->executeMain()V

    const/4 v0, 0x0

    .line 625
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->skipWriting:Z

    .line 627
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->executeMain()V

    return-void
.end method

.method public executeMain()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-string v0, ": "

    .line 647
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->checkAttributesAndElements()V

    const/4 v1, 0x1

    .line 651
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->addingNewFiles:Z

    .line 653
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->processDoUpdate()V

    .line 654
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->processGroupFilesets()V

    .line 657
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 658
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Zip;->baseDir:Ljava/io/File;

    if-eqz v3, :cond_0

    .line 659
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->getImplicitFileSet()Lorg/apache/tools/ant/types/FileSet;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/tools/ant/types/FileSet;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/tools/ant/types/FileSet;

    .line 660
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Zip;->baseDir:Ljava/io/File;

    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/types/FileSet;->setDir(Ljava/io/File;)V

    .line 661
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 663
    :cond_0
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Zip;->resources:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v3, 0x0

    new-array v4, v3, [Lorg/apache/tools/ant/types/ResourceCollection;

    .line 666
    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/tools/ant/types/ResourceCollection;

    const/4 v4, 0x0

    .line 671
    :try_start_0
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/Zip;->zipFile:Ljava/io/File;

    invoke-virtual {p0, v2, v5, v3}, Lorg/apache/tools/ant/taskdefs/Zip;->getResourcesToAdd([Lorg/apache/tools/ant/types/ResourceCollection;Ljava/io/File;Z)Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;

    move-result-object v5

    .line 674
    invoke-virtual {v5}, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;->isOutOfDate()Z

    move-result v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v6, :cond_1

    .line 794
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->cleanUp()V

    return-void

    .line 678
    :cond_1
    :try_start_1
    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/Zip;->zipFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 679
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_3

    .line 680
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    .line 681
    :cond_2
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    const-string v5, "Failed to create missing parent directory for %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/Zip;->zipFile:Ljava/io/File;

    aput-object v6, v1, v3

    invoke-direct {v2, v5, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .line 686
    :cond_3
    :goto_0
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->updatedFile:Z

    .line 687
    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/Zip;->zipFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v5}, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;->isWithoutAnyResources()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 688
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->zipFile:Ljava/io/File;

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/Zip;->createEmptyZip(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 794
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->cleanUp()V

    return-void

    .line 691
    :cond_4
    :try_start_2
    invoke-virtual {v5}, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;->getResourcesToAdd()[[Lorg/apache/tools/ant/types/Resource;

    move-result-object v5

    .line 693
    iget-boolean v6, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doUpdate:Z

    if-eqz v6, :cond_5

    .line 694
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->renameFile()Ljava/io/File;

    move-result-object v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :cond_5
    move-object v6, v4

    .line 697
    :goto_1
    :try_start_3
    iget-boolean v7, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doUpdate:Z

    if-eqz v7, :cond_6

    const-string v7, "Updating "

    goto :goto_2

    :cond_6
    const-string v7, "Building "

    .line 699
    :goto_2
    iget-boolean v8, p0, Lorg/apache/tools/ant/taskdefs/Zip;->skipWriting:Z

    if-nez v8, :cond_7

    .line 700
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/tools/ant/taskdefs/Zip;->archiveType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/tools/ant/taskdefs/Zip;->zipFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/tools/ant/taskdefs/Zip;->log(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 705
    :cond_7
    :try_start_4
    iget-boolean v7, p0, Lorg/apache/tools/ant/taskdefs/Zip;->skipWriting:Z

    if-nez v7, :cond_9

    .line 706
    new-instance v7, Lorg/apache/tools/zip/ZipOutputStream;

    iget-object v8, p0, Lorg/apache/tools/ant/taskdefs/Zip;->zipFile:Ljava/io/File;

    invoke-direct {v7, v8}, Lorg/apache/tools/zip/ZipOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 708
    :try_start_5
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Zip;->encoding:Ljava/lang/String;

    invoke-virtual {v7, v4}, Lorg/apache/tools/zip/ZipOutputStream;->setEncoding(Ljava/lang/String;)V

    .line 709
    iget-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/Zip;->useLanguageEncodingFlag:Z

    invoke-virtual {v7, v4}, Lorg/apache/tools/zip/ZipOutputStream;->setUseLanguageEncodingFlag(Z)V

    .line 710
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Zip;->createUnicodeExtraFields:Lorg/apache/tools/ant/taskdefs/Zip$UnicodeExtraField;

    .line 711
    invoke-virtual {v4}, Lorg/apache/tools/ant/taskdefs/Zip$UnicodeExtraField;->getPolicy()Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;

    move-result-object v4

    .line 710
    invoke-virtual {v7, v4}, Lorg/apache/tools/zip/ZipOutputStream;->setCreateUnicodeExtraFields(Lorg/apache/tools/zip/ZipOutputStream$UnicodeExtraFieldPolicy;)V

    .line 712
    iget-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/Zip;->fallBackToUTF8:Z

    invoke-virtual {v7, v4}, Lorg/apache/tools/zip/ZipOutputStream;->setFallbackToUTF8(Z)V

    .line 713
    iget-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doCompress:Z

    if-eqz v4, :cond_8

    const/16 v4, 0x8

    goto :goto_3

    :cond_8
    move v4, v3

    :goto_3
    invoke-virtual {v7, v4}, Lorg/apache/tools/zip/ZipOutputStream;->setMethod(I)V

    .line 715
    iget v4, p0, Lorg/apache/tools/ant/taskdefs/Zip;->level:I

    invoke-virtual {v7, v4}, Lorg/apache/tools/zip/ZipOutputStream;->setLevel(I)V

    .line 716
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Zip;->zip64Mode:Lorg/apache/tools/ant/taskdefs/Zip$Zip64ModeAttribute;

    invoke-virtual {v4}, Lorg/apache/tools/ant/taskdefs/Zip$Zip64ModeAttribute;->getMode()Lorg/apache/tools/zip/Zip64Mode;

    move-result-object v4

    invoke-virtual {v7, v4}, Lorg/apache/tools/zip/ZipOutputStream;->setUseZip64(Lorg/apache/tools/zip/Zip64Mode;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v4, v7

    goto :goto_4

    :catchall_0
    move-exception v1

    move-object v4, v7

    goto/16 :goto_7

    .line 718
    :cond_9
    :goto_4
    :try_start_6
    invoke-virtual {p0, v4}, Lorg/apache/tools/ant/taskdefs/Zip;->initZipOutputStream(Lorg/apache/tools/zip/ZipOutputStream;)V

    move v7, v3

    .line 721
    :goto_5
    array-length v8, v2

    if-ge v7, v8, :cond_b

    .line 722
    aget-object v8, v5, v7

    array-length v9, v8

    if-eqz v9, :cond_a

    .line 723
    aget-object v9, v2, v7

    invoke-virtual {p0, v9, v8, v4}, Lorg/apache/tools/ant/taskdefs/Zip;->addResources(Lorg/apache/tools/ant/types/ResourceCollection;[Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/zip/ZipOutputStream;)V

    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 727
    :cond_b
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doUpdate:Z

    if-eqz v2, :cond_e

    .line 728
    iput-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/Zip;->addingNewFiles:Z

    .line 729
    new-instance v2, Lorg/apache/tools/ant/types/ZipFileSet;

    invoke-direct {v2}, Lorg/apache/tools/ant/types/ZipFileSet;-><init>()V

    .line 730
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/apache/tools/ant/types/ZipFileSet;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 731
    invoke-virtual {v2, v6}, Lorg/apache/tools/ant/types/ZipFileSet;->setSrc(Ljava/io/File;)V

    .line 732
    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/ZipFileSet;->setDefaultexcludes(Z)V

    .line 734
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/Zip;->addedFiles:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 735
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/ZipFileSet;->createExclude()Lorg/apache/tools/ant/types/PatternSet$NameEntry;

    move-result-object v8

    invoke-virtual {v8, v7}, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->setName(Ljava/lang/String;)V

    goto :goto_6

    .line 738
    :cond_c
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/apache/tools/ant/types/ZipFileSet;->getDirectoryScanner(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v5

    .line 739
    move-object v7, v5

    check-cast v7, Lorg/apache/tools/ant/types/ZipScanner;

    iget-object v8, p0, Lorg/apache/tools/ant/taskdefs/Zip;->encoding:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lorg/apache/tools/ant/types/ZipScanner;->setEncoding(Ljava/lang/String;)V

    .line 742
    invoke-virtual {v5}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v7

    .line 744
    iget-boolean v8, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doFilesonly:Z

    if-nez v8, :cond_d

    .line 747
    invoke-virtual {v5}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedDirectories()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v8

    .line 746
    invoke-static {v7, v8}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v7

    .line 750
    :cond_d
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lorg/apache/tools/ant/taskdefs/Zip$$ExternalSyntheticLambda4;

    invoke-direct {v8, v5}, Lorg/apache/tools/ant/taskdefs/Zip$$ExternalSyntheticLambda4;-><init>(Lorg/apache/tools/ant/DirectoryScanner;)V

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v7, Lorg/apache/tools/ant/taskdefs/Zip$$ExternalSyntheticLambda5;

    invoke-direct {v7}, Lorg/apache/tools/ant/taskdefs/Zip$$ExternalSyntheticLambda5;-><init>()V

    .line 751
    invoke-interface {v5, v7}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/apache/tools/ant/types/Resource;

    .line 753
    invoke-virtual {p0, v2, v5, v4}, Lorg/apache/tools/ant/taskdefs/Zip;->addResources(Lorg/apache/tools/ant/types/FileSet;[Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/zip/ZipOutputStream;)V

    :cond_e
    if-eqz v4, :cond_f

    .line 756
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Zip;->comment:Ljava/lang/String;

    invoke-virtual {v4, v2}, Lorg/apache/tools/zip/ZipOutputStream;->setComment(Ljava/lang/String;)V

    .line 758
    :cond_f
    invoke-virtual {p0, v4}, Lorg/apache/tools/ant/taskdefs/Zip;->finalizeZipOutputStream(Lorg/apache/tools/zip/ZipOutputStream;)V

    .line 762
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doUpdate:Z

    if-eqz v2, :cond_10

    .line 763
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_10

    .line 764
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Warning: unable to delete temporary file "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 765
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 764
    invoke-virtual {p0, v2, v1}, Lorg/apache/tools/ant/taskdefs/Zip;->log(Ljava/lang/String;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 771
    :cond_10
    :try_start_7
    invoke-direct {p0, v4, v1}, Lorg/apache/tools/ant/taskdefs/Zip;->closeZout(Lorg/apache/tools/zip/ZipOutputStream;Z)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 794
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->cleanUp()V

    return-void

    :catchall_1
    move-exception v1

    .line 771
    :goto_7
    :try_start_8
    invoke-direct {p0, v4, v3}, Lorg/apache/tools/ant/taskdefs/Zip;->closeZout(Lorg/apache/tools/zip/ZipOutputStream;Z)V

    .line 772
    throw v1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catch_0
    move-exception v1

    move-object v4, v6

    goto :goto_8

    :catchall_2
    move-exception v0

    goto/16 :goto_a

    :catch_1
    move-exception v1

    .line 774
    :goto_8
    :try_start_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problem creating "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Zip;->archiveType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 775
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 778
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doUpdate:Z

    if-eqz v2, :cond_11

    if-eqz v4, :cond_12

    :cond_11
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Zip;->zipFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_12

    .line 779
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " (and the archive is probably corrupt but I could not delete it)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 783
    :cond_12
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doUpdate:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-eqz v2, :cond_13

    if-eqz v4, :cond_13

    .line 785
    :try_start_a
    sget-object v2, Lorg/apache/tools/ant/taskdefs/Zip;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Zip;->zipFile:Ljava/io/File;

    invoke-virtual {v2, v4, v3}, Lorg/apache/tools/ant/util/FileUtils;->rename(Ljava/io/File;Ljava/io/File;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_9

    .line 787
    :catch_2
    :try_start_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " (and I couldn\'t rename the temporary file "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 788
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " back)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 792
    :cond_13
    :goto_9
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v2, v0, v1, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 794
    :goto_a
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->cleanUp()V

    .line 795
    throw v0
.end method

.method protected finalizeZipOutputStream(Lorg/apache/tools/zip/ZipOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    return-void
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .line 455
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateUnicodeExtraFields()Lorg/apache/tools/ant/taskdefs/Zip$UnicodeExtraField;
    .locals 1

    .line 546
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->createUnicodeExtraFields:Lorg/apache/tools/ant/taskdefs/Zip$UnicodeExtraField;

    return-object v0
.end method

.method protected final getCurrentExtraFields()[Lorg/apache/tools/zip/ZipExtraField;
    .locals 1

    .line 1741
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Zip;->CURRENT_ZIP_EXTRA:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/tools/zip/ZipExtraField;

    return-object v0
.end method

.method public getDestFile()Ljava/io/File;
    .locals 1

    .line 273
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->zipFile:Ljava/io/File;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 424
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getFallBackToUTF8()Z
    .locals 1

    .line 570
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->fallBackToUTF8:Z

    return v0
.end method

.method public getLevel()I
    .locals 1

    .line 474
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->level:I

    return v0
.end method

.method public getModificationtime()Ljava/lang/String;
    .locals 1

    .line 612
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->fixedModTime:Ljava/lang/String;

    return-object v0
.end method

.method protected getNonFileSetResourcesToAdd([Lorg/apache/tools/ant/types/ResourceCollection;Ljava/io/File;Z)Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 1490
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Zip;->grabNonFileSetResources([Lorg/apache/tools/ant/types/ResourceCollection;)[[Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    .line 1491
    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Zip;->isEmpty([[Lorg/apache/tools/ant/types/Resource;)Z

    move-result v1

    .line 1492
    sget-object v2, Lorg/apache/tools/ant/taskdefs/Zip;->HAVE_NON_FILE_SET_RESOURCES_TO_ADD:Ljava/lang/ThreadLocal;

    xor-int/lit8 v3, v1, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    if-eqz v1, :cond_0

    .line 1496
    new-instance p1, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;

    invoke-direct {p1, p3, v0}, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;-><init>(Z[[Lorg/apache/tools/ant/types/Resource;)V

    return-object p1

    .line 1501
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 1502
    new-instance p1, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;

    invoke-direct {p1, v2, v0}, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;-><init>(Z[[Lorg/apache/tools/ant/types/Resource;)V

    return-object p1

    :cond_1
    if-eqz p3, :cond_2

    .line 1505
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doUpdate:Z

    if-nez v1, :cond_2

    .line 1507
    new-instance p1, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;

    invoke-direct {p1, v2, v0}, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;-><init>(Z[[Lorg/apache/tools/ant/types/Resource;)V

    return-object p1

    .line 1510
    :cond_2
    array-length v1, p1

    new-array v1, v1, [[Lorg/apache/tools/ant/types/Resource;

    const/4 v3, 0x0

    move v4, v3

    .line 1512
    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_a

    .line 1513
    aget-object v5, v0, v4

    array-length v5, v5

    if-nez v5, :cond_3

    new-array v5, v3, [Lorg/apache/tools/ant/types/Resource;

    .line 1514
    aput-object v5, v1, v4

    goto :goto_5

    :cond_3
    move v5, v3

    .line 1518
    :goto_1
    aget-object v6, v0, v4

    array-length v7, v6

    if-ge v5, v7, :cond_6

    .line 1519
    aget-object v6, v6, v5

    const-class v7, Lorg/apache/tools/ant/types/resources/FileProvider;

    .line 1520
    invoke-virtual {v6, v7}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/tools/ant/types/resources/FileProvider;

    if-eqz v6, :cond_5

    .line 1521
    invoke-interface {v6}, Lorg/apache/tools/ant/types/resources/FileProvider;->getFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_2

    .line 1522
    :cond_4
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string p2, "A zip file cannot include itself"

    .line 1523
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw p1

    :cond_5
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1527
    :cond_6
    new-instance v5, Lorg/apache/tools/ant/util/IdentityMapper;

    invoke-direct {v5}, Lorg/apache/tools/ant/util/IdentityMapper;-><init>()V

    invoke-direct {p0, v6, v5}, Lorg/apache/tools/ant/taskdefs/Zip;->selectOutOfDateResources([Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/util/FileNameMapper;)[Lorg/apache/tools/ant/types/Resource;

    move-result-object v5

    aput-object v5, v1, v4

    if-nez p3, :cond_8

    .line 1529
    array-length p3, v5

    if-lez p3, :cond_7

    goto :goto_3

    :cond_7
    move p3, v3

    goto :goto_4

    :cond_8
    :goto_3
    move p3, v2

    :goto_4
    if-eqz p3, :cond_9

    .line 1531
    iget-boolean v5, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doUpdate:Z

    if-nez v5, :cond_9

    goto :goto_6

    :cond_9
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_a
    :goto_6
    if-eqz p3, :cond_b

    .line 1538
    iget-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doUpdate:Z

    if-nez p1, :cond_b

    .line 1540
    new-instance p1, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;

    invoke-direct {p1, v2, v0}, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;-><init>(Z[[Lorg/apache/tools/ant/types/Resource;)V

    return-object p1

    .line 1543
    :cond_b
    new-instance p1, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;

    invoke-direct {p1, p3, v1}, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;-><init>(Z[[Lorg/apache/tools/ant/types/Resource;)V

    return-object p1
.end method

.method public getPreserve0Permissions()Z
    .locals 1

    .line 510
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->preserve0Permissions:Z

    return v0
.end method

.method protected getResourcesToAdd([Lorg/apache/tools/ant/types/FileSet;Ljava/io/File;Z)Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 1325
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Zip;->grabResources([Lorg/apache/tools/ant/types/FileSet;)[[Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    .line 1326
    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Zip;->isEmpty([[Lorg/apache/tools/ant/types/Resource;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    .line 1327
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Lorg/apache/tools/ant/taskdefs/Zip;->HAVE_NON_FILE_SET_RESOURCES_TO_ADD:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    if-eqz p3, :cond_0

    .line 1328
    iget-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doUpdate:Z

    if-eqz p1, :cond_0

    .line 1347
    new-instance p1, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;

    invoke-direct {p1, v2, v0}, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;-><init>(Z[[Lorg/apache/tools/ant/types/Resource;)V

    return-object p1

    :cond_0
    const-string p1, "skip"

    .line 1350
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->emptyBehavior:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v1, " archive "

    if-eqz p1, :cond_2

    .line 1351
    iget-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doUpdate:Z

    if-eqz p1, :cond_1

    .line 1352
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Zip;->archiveType:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " not updated because no new files were included."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/Zip;->logWhenWriting(Ljava/lang/String;I)V

    goto :goto_0

    .line 1356
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "Warning: skipping "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Zip;->archiveType:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " because no files were included."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lorg/apache/tools/ant/taskdefs/Zip;->logWhenWriting(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    const-string p1, "fail"

    .line 1361
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Zip;->emptyBehavior:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 1368
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_4

    move p3, v2

    goto :goto_0

    .line 1362
    :cond_3
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Cannot create "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->archiveType:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ": no files were included."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1365
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw p1

    .line 1376
    :cond_4
    :goto_0
    new-instance p1, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;

    invoke-direct {p1, p3, v0}, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;-><init>(Z[[Lorg/apache/tools/ant/types/Resource;)V

    return-object p1

    .line 1381
    :cond_5
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1382
    new-instance p1, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;

    invoke-direct {p1, v2, v0}, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;-><init>(Z[[Lorg/apache/tools/ant/types/Resource;)V

    return-object p1

    :cond_6
    if-eqz p3, :cond_7

    .line 1385
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doUpdate:Z

    if-nez v1, :cond_7

    .line 1387
    new-instance p1, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;

    invoke-direct {p1, v2, v0}, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;-><init>(Z[[Lorg/apache/tools/ant/types/Resource;)V

    return-object p1

    .line 1390
    :cond_7
    array-length v1, p1

    new-array v1, v1, [[Lorg/apache/tools/ant/types/Resource;

    const/4 v3, 0x0

    move v4, v3

    .line 1392
    :goto_1
    array-length v5, p1

    if-ge v4, v5, :cond_b

    .line 1393
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/Zip;->fileset:Lorg/apache/tools/ant/types/FileSet;

    instance-of v5, v5, Lorg/apache/tools/ant/types/ZipFileSet;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/Zip;->fileset:Lorg/apache/tools/ant/types/FileSet;

    check-cast v5, Lorg/apache/tools/ant/types/ZipFileSet;

    .line 1394
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/tools/ant/types/ZipFileSet;->getSrc(Lorg/apache/tools/ant/Project;)Ljava/io/File;

    move-result-object v5

    if-nez v5, :cond_a

    .line 1395
    :cond_8
    aget-object v5, p1, v4

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/tools/ant/types/FileSet;->getDir(Lorg/apache/tools/ant/Project;)Ljava/io/File;

    move-result-object v5

    move v6, v3

    .line 1397
    :goto_2
    aget-object v7, v0, v4

    array-length v8, v7

    if-ge v6, v8, :cond_a

    .line 1398
    sget-object v8, Lorg/apache/tools/ant/taskdefs/Zip;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    aget-object v7, v7, v6

    .line 1400
    invoke-virtual {v7}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1399
    invoke-virtual {v8, v5, v7}, Lorg/apache/tools/ant/util/FileUtils;->resolveFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 1401
    invoke-virtual {v7, p2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1402
    :cond_9
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string p2, "A zip file cannot include itself"

    .line 1403
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw p1

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_b
    move p2, v3

    .line 1409
    :goto_3
    array-length v4, p1

    if-ge p2, v4, :cond_13

    .line 1410
    aget-object v4, v0, p2

    array-length v4, v4

    if-nez v4, :cond_c

    new-array v4, v3, [Lorg/apache/tools/ant/types/Resource;

    .line 1411
    aput-object v4, v1, p2

    goto/16 :goto_7

    .line 1415
    :cond_c
    new-instance v4, Lorg/apache/tools/ant/util/IdentityMapper;

    invoke-direct {v4}, Lorg/apache/tools/ant/util/IdentityMapper;-><init>()V

    .line 1416
    aget-object v5, p1, p2

    instance-of v6, v5, Lorg/apache/tools/ant/types/ZipFileSet;

    if-eqz v6, :cond_f

    .line 1417
    check-cast v5, Lorg/apache/tools/ant/types/ZipFileSet;

    .line 1418
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/tools/ant/types/ZipFileSet;->getFullpath(Lorg/apache/tools/ant/Project;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_d

    .line 1419
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/tools/ant/types/ZipFileSet;->getFullpath(Lorg/apache/tools/ant/Project;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_d

    .line 1423
    new-instance v4, Lorg/apache/tools/ant/util/MergingMapper;

    invoke-direct {v4}, Lorg/apache/tools/ant/util/MergingMapper;-><init>()V

    .line 1424
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/tools/ant/types/ZipFileSet;->getFullpath(Lorg/apache/tools/ant/Project;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/tools/ant/util/MergingMapper;->setTo(Ljava/lang/String;)V

    goto :goto_4

    .line 1427
    :cond_d
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/tools/ant/types/ZipFileSet;->getPrefix(Lorg/apache/tools/ant/Project;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_f

    .line 1428
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/tools/ant/types/ZipFileSet;->getPrefix(Lorg/apache/tools/ant/Project;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_f

    .line 1429
    new-instance v4, Lorg/apache/tools/ant/util/GlobPatternMapper;

    invoke-direct {v4}, Lorg/apache/tools/ant/util/GlobPatternMapper;-><init>()V

    const-string v6, "*"

    .line 1430
    invoke-virtual {v4, v6}, Lorg/apache/tools/ant/util/GlobPatternMapper;->setFrom(Ljava/lang/String;)V

    .line 1431
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/apache/tools/ant/types/ZipFileSet;->getPrefix(Lorg/apache/tools/ant/Project;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "/"

    .line 1432
    invoke-virtual {v5, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_e

    const-string v8, "\\"

    invoke-virtual {v5, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_e

    .line 1433
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1435
    :cond_e
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/tools/ant/util/GlobPatternMapper;->setTo(Ljava/lang/String;)V

    .line 1440
    :cond_f
    :goto_4
    aget-object v5, v0, p2

    invoke-direct {p0, v5, v4}, Lorg/apache/tools/ant/taskdefs/Zip;->selectOutOfDateResources([Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/util/FileNameMapper;)[Lorg/apache/tools/ant/types/Resource;

    move-result-object v4

    aput-object v4, v1, p2

    if-nez p3, :cond_11

    .line 1442
    array-length p3, v4

    if-lez p3, :cond_10

    goto :goto_5

    :cond_10
    move p3, v3

    goto :goto_6

    :cond_11
    :goto_5
    move p3, v2

    :goto_6
    if-eqz p3, :cond_12

    .line 1444
    iget-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doUpdate:Z

    if-nez v4, :cond_12

    goto :goto_8

    :cond_12
    :goto_7
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_3

    :cond_13
    :goto_8
    if-eqz p3, :cond_14

    .line 1451
    iget-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doUpdate:Z

    if-nez p1, :cond_14

    .line 1453
    new-instance p1, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;

    invoke-direct {p1, v2, v0}, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;-><init>(Z[[Lorg/apache/tools/ant/types/Resource;)V

    return-object p1

    .line 1456
    :cond_14
    new-instance p1, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;

    invoke-direct {p1, p3, v1}, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;-><init>(Z[[Lorg/apache/tools/ant/types/Resource;)V

    return-object p1
.end method

.method protected getResourcesToAdd([Lorg/apache/tools/ant/types/ResourceCollection;Ljava/io/File;Z)Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 1248
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1249
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1250
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, p1, v4

    .line 1251
    instance-of v6, v5, Lorg/apache/tools/ant/types/FileSet;

    if-eqz v6, :cond_0

    .line 1252
    check-cast v5, Lorg/apache/tools/ant/types/FileSet;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1254
    :cond_0
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-array v2, v3, [Lorg/apache/tools/ant/types/ResourceCollection;

    .line 1258
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/tools/ant/types/ResourceCollection;

    .line 1259
    invoke-virtual {p0, v1, p2, p3}, Lorg/apache/tools/ant/taskdefs/Zip;->getNonFileSetResourcesToAdd([Lorg/apache/tools/ant/types/ResourceCollection;Ljava/io/File;Z)Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;

    move-result-object p3

    new-array v2, v3, [Lorg/apache/tools/ant/types/FileSet;

    .line 1262
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/tools/ant/types/FileSet;

    .line 1263
    invoke-virtual {p3}, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;->isOutOfDate()Z

    move-result v2

    invoke-virtual {p0, v0, p2, v2}, Lorg/apache/tools/ant/taskdefs/Zip;->getResourcesToAdd([Lorg/apache/tools/ant/types/FileSet;Ljava/io/File;Z)Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;

    move-result-object v0

    .line 1264
    invoke-virtual {p3}, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;->isOutOfDate()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;->isOutOfDate()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p3, 0x1

    .line 1273
    invoke-virtual {p0, v1, p2, p3}, Lorg/apache/tools/ant/taskdefs/Zip;->getNonFileSetResourcesToAdd([Lorg/apache/tools/ant/types/ResourceCollection;Ljava/io/File;Z)Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;

    move-result-object p3

    .line 1276
    :cond_2
    array-length p2, p1

    new-array p2, p2, [[Lorg/apache/tools/ant/types/Resource;

    move v1, v3

    move v2, v1

    .line 1279
    :goto_2
    array-length v4, p1

    if-ge v3, v4, :cond_4

    .line 1280
    aget-object v4, p1, v3

    instance-of v4, v4, Lorg/apache/tools/ant/types/FileSet;

    if-eqz v4, :cond_3

    .line 1281
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;->getResourcesToAdd()[[Lorg/apache/tools/ant/types/Resource;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    aget-object v2, v4, v2

    aput-object v2, p2, v3

    move v2, v5

    goto :goto_3

    .line 1283
    :cond_3
    invoke-virtual {p3}, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;->getResourcesToAdd()[[Lorg/apache/tools/ant/types/Resource;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    aget-object v1, v4, v1

    aput-object v1, p2, v3

    move v1, v5

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1286
    :cond_4
    new-instance p1, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;->isOutOfDate()Z

    move-result p3

    invoke-direct {p1, p3, p2}, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;-><init>(Z[[Lorg/apache/tools/ant/types/Resource;)V

    return-object p1
.end method

.method public getUseLanguageEnodingFlag()Z
    .locals 1

    .line 528
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->useLanguageEncodingFlag:Z

    return v0
.end method

.method public getZip64Mode()Lorg/apache/tools/ant/taskdefs/Zip$Zip64ModeAttribute;
    .locals 1

    .line 588
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->zip64Mode:Lorg/apache/tools/ant/taskdefs/Zip$Zip64ModeAttribute;

    return-object v0
.end method

.method protected grabNonFileSetResources([Lorg/apache/tools/ant/types/ResourceCollection;)[[Lorg/apache/tools/ant/types/Resource;
    .locals 8

    .line 1619
    array-length v0, p1

    new-array v0, v0, [[Lorg/apache/tools/ant/types/Resource;

    const/4 v1, 0x0

    move v2, v1

    .line 1620
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_3

    .line 1621
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1622
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1623
    aget-object v5, p1, v2

    invoke-interface {v5}, Lorg/apache/tools/ant/types/ResourceCollection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/tools/ant/types/Resource;

    .line 1624
    invoke-virtual {v6}, Lorg/apache/tools/ant/types/Resource;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1625
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1626
    :cond_1
    invoke-virtual {v6}, Lorg/apache/tools/ant/types/Resource;->isExists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1627
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1632
    :cond_2
    new-instance v5, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v5}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 1633
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1634
    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-array v3, v1, [Lorg/apache/tools/ant/types/Resource;

    .line 1635
    invoke-interface {v5, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/apache/tools/ant/types/Resource;

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method protected grabResources([Lorg/apache/tools/ant/types/FileSet;)[[Lorg/apache/tools/ant/types/Resource;
    .locals 11

    .line 1579
    array-length v0, p1

    new-array v0, v0, [[Lorg/apache/tools/ant/types/Resource;

    const/4 v1, 0x0

    move v2, v1

    .line 1580
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_9

    .line 1582
    aget-object v3, p1, v2

    instance-of v4, v3, Lorg/apache/tools/ant/types/ZipFileSet;

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 1583
    check-cast v3, Lorg/apache/tools/ant/types/ZipFileSet;

    .line 1584
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/types/ZipFileSet;->getPrefix(Lorg/apache/tools/ant/Project;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1585
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/types/ZipFileSet;->getFullpath(Lorg/apache/tools/ant/Project;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    move v5, v1

    .line 1587
    :cond_1
    :goto_1
    aget-object v3, p1, v2

    .line 1588
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/types/FileSet;->getDirectoryScanner(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v3

    .line 1589
    instance-of v4, v3, Lorg/apache/tools/ant/types/ZipScanner;

    if-eqz v4, :cond_2

    .line 1590
    move-object v4, v3

    check-cast v4, Lorg/apache/tools/ant/types/ZipScanner;

    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/Zip;->encoding:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lorg/apache/tools/ant/types/ZipScanner;->setEncoding(Ljava/lang/String;)V

    .line 1592
    :cond_2
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 1593
    iget-boolean v6, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doFilesonly:Z

    if-nez v6, :cond_5

    .line 1594
    invoke-virtual {v3}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedDirectories()[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v8, v1

    :goto_2
    if-ge v8, v7, :cond_5

    aget-object v9, v6, v8

    .line 1595
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_3

    if-nez v5, :cond_4

    .line 1596
    :cond_3
    invoke-virtual {v3, v9}, Lorg/apache/tools/ant/DirectoryScanner;->getResource(Ljava/lang/String;)Lorg/apache/tools/ant/types/Resource;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1600
    :cond_5
    invoke-virtual {v3}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v8, v1

    :goto_3
    if-ge v8, v7, :cond_8

    aget-object v9, v6, v8

    .line 1601
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_6

    if-nez v5, :cond_7

    .line 1602
    :cond_6
    invoke-virtual {v3, v9}, Lorg/apache/tools/ant/DirectoryScanner;->getResource(Ljava/lang/String;)Lorg/apache/tools/ant/types/Resource;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_8
    new-array v3, v1, [Lorg/apache/tools/ant/types/Resource;

    .line 1605
    invoke-interface {v4, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/apache/tools/ant/types/Resource;

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_9
    return-object v0
.end method

.method protected hasUpdatedFile()Z
    .locals 1

    .line 637
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->updatedFile:Z

    return v0
.end method

.method protected initZipOutputStream(Lorg/apache/tools/zip/ZipOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    return-void
.end method

.method protected final isAddingNewFiles()Z
    .locals 1

    .line 905
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->addingNewFiles:Z

    return v0
.end method

.method public isCompress()Z
    .locals 1

    .line 300
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doCompress:Z

    return v0
.end method

.method protected final isFirstPass()Z
    .locals 1

    .line 149
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doubleFilePass:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->skipWriting:Z

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

.method public isInUpdateMode()Z
    .locals 1

    .line 327
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doUpdate:Z

    return v0
.end method

.method synthetic lambda$selectFileResources$4$org-apache-tools-ant-taskdefs-Zip(Lorg/apache/tools/ant/types/Resource;)Z
    .locals 2

    .line 2017
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2020
    :cond_0
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doFilesonly:Z

    if-eqz v0, :cond_1

    .line 2021
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ignoring directory "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2022
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " as only files will be added."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    .line 2021
    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/Zip;->logWhenWriting(Ljava/lang/String;I)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected logWhenWriting(Ljava/lang/String;I)V
    .locals 1

    .line 2067
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->skipWriting:Z

    if-nez v0, :cond_0

    .line 2068
    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/Zip;->log(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    .line 1979
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->resources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 1980
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->zipFile:Ljava/io/File;

    .line 1981
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->baseDir:Ljava/io/File;

    .line 1982
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->groupfilesets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const-string v1, "add"

    .line 1983
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->duplicate:Ljava/lang/String;

    const-string v1, "zip"

    .line 1984
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->archiveType:Ljava/lang/String;

    const/4 v1, 0x1

    .line 1985
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doCompress:Z

    const-string v1, "skip"

    .line 1986
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->emptyBehavior:Ljava/lang/String;

    const/4 v1, 0x0

    .line 1987
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doUpdate:Z

    .line 1988
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doFilesonly:Z

    .line 1989
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->encoding:Ljava/lang/String;

    return-void
.end method

.method protected selectDirectoryResources([Lorg/apache/tools/ant/types/Resource;)[Lorg/apache/tools/ant/types/Resource;
    .locals 1

    .line 2038
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Zip$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/Zip$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/Zip;->selectResources([Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;)[Lorg/apache/tools/ant/types/Resource;

    move-result-object p1

    return-object p1
.end method

.method protected selectFileResources([Lorg/apache/tools/ant/types/Resource;)[Lorg/apache/tools/ant/types/Resource;
    .locals 1

    .line 2015
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Zip$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/Zip$$ExternalSyntheticLambda2;-><init>(Lorg/apache/tools/ant/taskdefs/Zip;)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/Zip;->selectResources([Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;)[Lorg/apache/tools/ant/types/Resource;

    move-result-object p1

    return-object p1
.end method

.method protected selectResources([Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;)[Lorg/apache/tools/ant/types/Resource;
    .locals 2

    .line 2050
    array-length v0, p1

    if-nez v0, :cond_0

    return-object p1

    .line 2053
    :cond_0
    invoke-static {p1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/Zip$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2}, Lorg/apache/tools/ant/taskdefs/Zip$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lorg/apache/tools/ant/taskdefs/Zip$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/Zip$$ExternalSyntheticLambda1;-><init>()V

    .line 2054
    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lorg/apache/tools/ant/types/Resource;

    .line 2055
    array-length v0, p2

    array-length v1, p1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public setBasedir(Ljava/io/File;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->baseDir:Ljava/io/File;

    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    .line 445
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->comment:Ljava/lang/String;

    return-void
.end method

.method public setCompress(Z)V
    .locals 0

    .line 291
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doCompress:Z

    return-void
.end method

.method public setCreateUnicodeExtraFields(Lorg/apache/tools/ant/taskdefs/Zip$UnicodeExtraField;)V
    .locals 0

    .line 537
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->createUnicodeExtraFields:Lorg/apache/tools/ant/taskdefs/Zip$UnicodeExtraField;

    return-void
.end method

.method protected final setCurrentExtraFields([Lorg/apache/tools/zip/ZipExtraField;)V
    .locals 1

    .line 1751
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Zip;->CURRENT_ZIP_EXTRA:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public setDestFile(Ljava/io/File;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->zipFile:Ljava/io/File;

    return-void
.end method

.method public setDuplicate(Lorg/apache/tools/ant/taskdefs/Zip$Duplicate;)V
    .locals 0

    .line 374
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Zip$Duplicate;->getValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->duplicate:Ljava/lang/String;

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    .line 415
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->encoding:Ljava/lang/String;

    return-void
.end method

.method public setFallBackToUTF8(Z)V
    .locals 0

    .line 559
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->fallBackToUTF8:Z

    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 254
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Zip;->setDestFile(Ljava/io/File;)V

    return-void
.end method

.method public setFilesonly(Z)V
    .locals 0

    .line 309
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doFilesonly:Z

    return-void
.end method

.method public setKeepCompression(Z)V
    .locals 0

    .line 435
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->keepCompression:Z

    return-void
.end method

.method public setLevel(I)V
    .locals 0

    .line 465
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->level:I

    return-void
.end method

.method public setModificationtime(Ljava/lang/String;)V
    .locals 0

    .line 602
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->fixedModTime:Ljava/lang/String;

    return-void
.end method

.method public setPreserve0Permissions(Z)V
    .locals 0

    .line 501
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->preserve0Permissions:Z

    return-void
.end method

.method public setRoundUp(Z)V
    .locals 0

    .line 492
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->roundUp:Z

    return-void
.end method

.method public setUpdate(Z)V
    .locals 0

    .line 318
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doUpdate:Z

    .line 319
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->savedDoUpdate:Z

    return-void
.end method

.method public setUseLanguageEncodingFlag(Z)V
    .locals 0

    .line 519
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->useLanguageEncodingFlag:Z

    return-void
.end method

.method public setWhenempty(Lorg/apache/tools/ant/taskdefs/Zip$WhenEmpty;)V
    .locals 0

    .line 403
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Zip$WhenEmpty;->getValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->emptyBehavior:Ljava/lang/String;

    return-void
.end method

.method public setZip64Mode(Lorg/apache/tools/ant/taskdefs/Zip$Zip64ModeAttribute;)V
    .locals 0

    .line 579
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->zip64Mode:Lorg/apache/tools/ant/taskdefs/Zip$Zip64ModeAttribute;

    return-void
.end method

.method public setZipfile(Ljava/io/File;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 240
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Zip;->setDestFile(Ljava/io/File;)V

    return-void
.end method

.method protected zipDir(Ljava/io/File;Lorg/apache/tools/zip/ZipOutputStream;Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 1652
    invoke-virtual/range {v0 .. v5}, Lorg/apache/tools/ant/taskdefs/Zip;->zipDir(Ljava/io/File;Lorg/apache/tools/zip/ZipOutputStream;Ljava/lang/String;I[Lorg/apache/tools/zip/ZipExtraField;)V

    return-void
.end method

.method protected zipDir(Ljava/io/File;Lorg/apache/tools/zip/ZipOutputStream;Ljava/lang/String;I[Lorg/apache/tools/zip/ZipExtraField;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    move-object v2, p1

    goto :goto_0

    .line 1668
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResource;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Ljava/io/File;)V

    move-object v2, v0

    :goto_0
    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lorg/apache/tools/ant/taskdefs/Zip;->zipDir(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/zip/ZipOutputStream;Ljava/lang/String;I[Lorg/apache/tools/zip/ZipExtraField;)V

    return-void
.end method

.method protected zipDir(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/zip/ZipOutputStream;Ljava/lang/String;I[Lorg/apache/tools/zip/ZipExtraField;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1685
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doFilesonly:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 1686
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "skipping directory "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " for file-only archive"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lorg/apache/tools/ant/taskdefs/Zip;->logWhenWriting(Ljava/lang/String;I)V

    return-void

    .line 1691
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->addedDirs:Ljava/util/Hashtable;

    invoke-virtual {v0, p3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    return-void

    .line 1697
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "adding directory "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Zip;->logWhenWriting(Ljava/lang/String;I)V

    .line 1698
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->addedDirs:Ljava/util/Hashtable;

    invoke-virtual {v0, p3, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1700
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->skipWriting:Z

    if-nez v0, :cond_6

    .line 1701
    new-instance v0, Lorg/apache/tools/zip/ZipEntry;

    invoke-direct {v0, p3}, Lorg/apache/tools/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 1704
    iget-boolean p3, p0, Lorg/apache/tools/ant/taskdefs/Zip;->roundUp:Z

    const/4 v1, 0x0

    if-eqz p3, :cond_2

    const/16 p3, 0x7cf

    goto :goto_0

    :cond_2
    move p3, v1

    .line 1706
    :goto_0
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Zip;->fixedModTime:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 1707
    iget-wide v2, p0, Lorg/apache/tools/ant/taskdefs/Zip;->modTimeMillis:J

    invoke-virtual {v0, v2, v3}, Lorg/apache/tools/zip/ZipEntry;->setTime(J)V

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    .line 1708
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->isExists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1709
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getLastModified()J

    move-result-wide v2

    int-to-long v4, p3

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lorg/apache/tools/zip/ZipEntry;->setTime(J)V

    goto :goto_1

    .line 1711
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-long v4, p3

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lorg/apache/tools/zip/ZipEntry;->setTime(J)V

    :goto_1
    const-wide/16 v2, 0x0

    .line 1713
    invoke-virtual {v0, v2, v3}, Lorg/apache/tools/zip/ZipEntry;->setSize(J)V

    .line 1714
    invoke-virtual {v0, v1}, Lorg/apache/tools/zip/ZipEntry;->setMethod(I)V

    .line 1716
    sget-wide v1, Lorg/apache/tools/ant/taskdefs/Zip;->EMPTY_CRC:J

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/zip/ZipEntry;->setCrc(J)V

    .line 1717
    invoke-virtual {v0, p4}, Lorg/apache/tools/zip/ZipEntry;->setUnixMode(I)V

    if-eqz p5, :cond_5

    .line 1720
    invoke-virtual {v0, p5}, Lorg/apache/tools/zip/ZipEntry;->setExtraFields([Lorg/apache/tools/zip/ZipExtraField;)V

    .line 1723
    :cond_5
    invoke-virtual {p2, v0}, Lorg/apache/tools/zip/ZipOutputStream;->putNextEntry(Lorg/apache/tools/zip/ZipEntry;)V

    :cond_6
    return-void
.end method

.method protected zipFile(Ljava/io/File;Lorg/apache/tools/zip/ZipOutputStream;Ljava/lang/String;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1893
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->zipFile:Ljava/io/File;

    invoke-virtual {p1, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1898
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/nio/file/OpenOption;

    invoke-static {v1, v3}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1901
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    iget-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->roundUp:Z

    if-eqz p1, :cond_0

    const/16 v2, 0x7cf

    :cond_0
    int-to-long v1, v2

    add-long v5, v3, v1

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, v0

    move-object v3, p2

    move-object v4, p3

    move v8, p4

    .line 1900
    invoke-virtual/range {v1 .. v8}, Lorg/apache/tools/ant/taskdefs/Zip;->zipFile(Ljava/io/InputStream;Lorg/apache/tools/zip/ZipOutputStream;Ljava/lang/String;JLjava/io/File;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1903
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    .line 1898
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1

    .line 1894
    :cond_1
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string p2, "A zip file cannot include itself"

    .line 1895
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw p1
.end method

.method protected zipFile(Ljava/io/InputStream;Lorg/apache/tools/zip/ZipOutputStream;Ljava/lang/String;JLjava/io/File;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1774
    iget-object p6, p0, Lorg/apache/tools/ant/taskdefs/Zip;->entries:Ljava/util/Hashtable;

    invoke-virtual {p6, p3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p6

    const/4 v0, 0x3

    if-eqz p6, :cond_2

    const-string p6, "preserve"

    .line 1776
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->duplicate:Ljava/lang/String;

    invoke-virtual {p6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_0

    .line 1777
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " already added, skipping"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/Zip;->logWhenWriting(Ljava/lang/String;I)V

    return-void

    :cond_0
    const-string p6, "fail"

    .line 1781
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->duplicate:Ljava/lang/String;

    invoke-virtual {p6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-nez p6, :cond_1

    .line 1787
    new-instance p6, Ljava/lang/StringBuilder;

    const-string v1, "duplicate file "

    invoke-direct {p6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    const-string v1, " found, adding."

    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p0, p6, v0}, Lorg/apache/tools/ant/taskdefs/Zip;->logWhenWriting(Ljava/lang/String;I)V

    goto :goto_0

    .line 1782
    :cond_1
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string p2, "Duplicate file %s was found and the duplicate attribute is \'fail\'."

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    .line 1790
    :cond_2
    new-instance p6, Ljava/lang/StringBuilder;

    const-string v1, "adding entry "

    invoke-direct {p6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p0, p6, v0}, Lorg/apache/tools/ant/taskdefs/Zip;->logWhenWriting(Ljava/lang/String;I)V

    .line 1793
    :goto_0
    iget-object p6, p0, Lorg/apache/tools/ant/taskdefs/Zip;->entries:Ljava/util/Hashtable;

    invoke-virtual {p6, p3, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1795
    iget-boolean p6, p0, Lorg/apache/tools/ant/taskdefs/Zip;->skipWriting:Z

    if-nez p6, :cond_b

    .line 1796
    new-instance p6, Lorg/apache/tools/zip/ZipEntry;

    invoke-direct {p6, p3}, Lorg/apache/tools/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 1797
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Zip;->fixedModTime:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-wide p4, p0, Lorg/apache/tools/ant/taskdefs/Zip;->modTimeMillis:J

    :cond_3
    invoke-virtual {p6, p4, p5}, Lorg/apache/tools/zip/ZipEntry;->setTime(J)V

    .line 1798
    iget-boolean p4, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doCompress:Z

    const/4 p5, 0x0

    if-eqz p4, :cond_4

    const/16 p4, 0x8

    goto :goto_1

    :cond_4
    move p4, p5

    :goto_1
    invoke-virtual {p6, p4}, Lorg/apache/tools/zip/ZipEntry;->setMethod(I)V

    .line 1804
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result p4

    if-eqz p4, :cond_5

    goto :goto_2

    :cond_5
    new-instance p4, Ljava/io/BufferedInputStream;

    invoke-direct {p4, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, p4

    .line 1812
    :goto_2
    invoke-virtual {p2}, Lorg/apache/tools/zip/ZipOutputStream;->isSeekable()Z

    move-result p4

    const/4 v0, -0x1

    const/16 v1, 0x2000

    if-nez p4, :cond_7

    iget-boolean p4, p0, Lorg/apache/tools/ant/taskdefs/Zip;->doCompress:Z

    if-nez p4, :cond_7

    .line 1814
    new-instance p4, Ljava/util/zip/CRC32;

    invoke-direct {p4}, Ljava/util/zip/CRC32;-><init>()V

    const v2, 0x7fffffff

    .line 1815
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->mark(I)V

    new-array v2, v1, [B

    const-wide/16 v3, 0x0

    move v5, p5

    :cond_6
    int-to-long v6, v5

    add-long/2addr v3, v6

    .line 1820
    invoke-virtual {p4, v2, p5, v5}, Ljava/util/zip/CRC32;->update([BII)V

    .line 1821
    invoke-virtual {p1, v2, p5, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-ne v5, v0, :cond_6

    .line 1823
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 1824
    invoke-virtual {p6, v3, v4}, Lorg/apache/tools/zip/ZipEntry;->setSize(J)V

    .line 1825
    invoke-virtual {p4}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    invoke-virtual {p6, v2, v3}, Lorg/apache/tools/zip/ZipEntry;->setCrc(J)V

    .line 1828
    :cond_7
    invoke-virtual {p6, p7}, Lorg/apache/tools/zip/ZipEntry;->setUnixMode(I)V

    .line 1829
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->getCurrentExtraFields()[Lorg/apache/tools/zip/ZipExtraField;

    move-result-object p4

    if-eqz p4, :cond_8

    .line 1831
    invoke-virtual {p6, p4}, Lorg/apache/tools/zip/ZipEntry;->setExtraFields([Lorg/apache/tools/zip/ZipExtraField;)V

    .line 1834
    :cond_8
    invoke-virtual {p2, p6}, Lorg/apache/tools/zip/ZipOutputStream;->putNextEntry(Lorg/apache/tools/zip/ZipEntry;)V

    new-array p4, v1, [B

    move p6, p5

    :cond_9
    if-eqz p6, :cond_a

    .line 1840
    invoke-virtual {p2, p4, p5, p6}, Lorg/apache/tools/zip/ZipOutputStream;->write([BII)V

    .line 1842
    :cond_a
    invoke-virtual {p1, p4, p5, v1}, Ljava/io/InputStream;->read([BII)I

    move-result p6

    if-ne p6, v0, :cond_9

    .line 1845
    :cond_b
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/Zip;->addedFiles:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final zipFile(Ljava/io/InputStream;Lorg/apache/tools/zip/ZipOutputStream;Ljava/lang/String;JLjava/io/File;I[Lorg/apache/tools/zip/ZipExtraField;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1870
    :try_start_0
    invoke-virtual {p0, p8}, Lorg/apache/tools/ant/taskdefs/Zip;->setCurrentExtraFields([Lorg/apache/tools/zip/ZipExtraField;)V

    .line 1871
    invoke-virtual/range {p0 .. p7}, Lorg/apache/tools/ant/taskdefs/Zip;->zipFile(Ljava/io/InputStream;Lorg/apache/tools/zip/ZipOutputStream;Ljava/lang/String;JLjava/io/File;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1873
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Zip;->setCurrentExtraFields([Lorg/apache/tools/zip/ZipExtraField;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Zip;->setCurrentExtraFields([Lorg/apache/tools/zip/ZipExtraField;)V

    .line 1874
    throw p1
.end method
