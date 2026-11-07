.class public Lorg/apache/tools/ant/taskdefs/Get;
.super Lorg/apache/tools/ant/Task;
.source "Get.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/Get$VerboseProgress;,
        Lorg/apache/tools/ant/taskdefs/Get$DownloadProgress;,
        Lorg/apache/tools/ant/taskdefs/Get$NullProgress;,
        Lorg/apache/tools/ant/taskdefs/Get$GetThread;,
        Lorg/apache/tools/ant/taskdefs/Get$Base64Converter;
    }
.end annotation


# static fields
.field private static final BIG_BUFFER_SIZE:I = 0x19000

.field private static final DEFAULT_AGENT_PREFIX:Ljava/lang/String; = "Apache Ant"

.field private static final DOTS_PER_LINE:I = 0x32

.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

.field private static final GZIP_CONTENT_ENCODING:Ljava/lang/String; = "gzip"

.field private static final HTTP:Ljava/lang/String; = "http"

.field private static final HTTPS:Ljava/lang/String; = "https"

.field private static final HTTP_MOVED_TEMP:I = 0x133

.field private static final NUMBER_RETRIES:I = 0x3

.field private static final REDIRECT_LIMIT:I = 0x19


# instance fields
.field private authenticateOnRedirect:Z

.field private destination:Ljava/io/File;

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private httpUseCaches:Z

.field private ignoreErrors:Z

.field private mapperElement:Lorg/apache/tools/ant/types/Mapper;

.field private maxTime:J

.field private numberRetries:I

.field private pword:Ljava/lang/String;

.field private quiet:Z

.field private skipExisting:Z

.field private final sources:Lorg/apache/tools/ant/types/resources/Resources;

.field private tryGzipEncoding:Z

.field private uname:Ljava/lang/String;

.field private useTimestamp:Z

.field private userAgent:Ljava/lang/String;

.field private verbose:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Get;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 61
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 77
    new-instance v0, Lorg/apache/tools/ant/types/resources/Resources;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/Resources;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get;->sources:Lorg/apache/tools/ant/types/resources/Resources;

    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Get;->verbose:Z

    .line 80
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Get;->quiet:Z

    .line 81
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Get;->useTimestamp:Z

    .line 82
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Get;->ignoreErrors:Z

    const/4 v1, 0x0

    .line 83
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Get;->uname:Ljava/lang/String;

    .line 84
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Get;->pword:Ljava/lang/String;

    .line 85
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Get;->authenticateOnRedirect:Z

    const-wide/16 v2, 0x0

    .line 86
    iput-wide v2, p0, Lorg/apache/tools/ant/taskdefs/Get;->maxTime:J

    const/4 v2, 0x3

    .line 87
    iput v2, p0, Lorg/apache/tools/ant/taskdefs/Get;->numberRetries:I

    .line 88
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Get;->skipExisting:Z

    const/4 v2, 0x1

    .line 89
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Get;->httpUseCaches:Z

    .line 90
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Get;->tryGzipEncoding:Z

    .line 91
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Get;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Apache Ant/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-static {}, Lorg/apache/tools/ant/Main;->getShortAntVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ant.http.agent"

    .line 93
    invoke-static {v1, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get;->userAgent:Ljava/lang/String;

    .line 98
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get;->headers:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/tools/ant/taskdefs/Get;)Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Lorg/apache/tools/ant/taskdefs/Get;->uname:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lorg/apache/tools/ant/taskdefs/Get;)Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Lorg/apache/tools/ant/taskdefs/Get;->pword:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000()Lorg/apache/tools/ant/util/FileUtils;
    .locals 1

    .line 61
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Get;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/tools/ant/taskdefs/Get;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lorg/apache/tools/ant/taskdefs/Get;->useTimestamp:Z

    return p0
.end method

.method static synthetic access$300(Lorg/apache/tools/ant/taskdefs/Get;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lorg/apache/tools/ant/taskdefs/Get;->ignoreErrors:Z

    return p0
.end method

.method static synthetic access$400(Lorg/apache/tools/ant/taskdefs/Get;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lorg/apache/tools/ant/taskdefs/Get;->tryGzipEncoding:Z

    return p0
.end method

.method static synthetic access$500(Lorg/apache/tools/ant/taskdefs/Get;)Ljava/util/Map;
    .locals 0

    .line 61
    iget-object p0, p0, Lorg/apache/tools/ant/taskdefs/Get;->headers:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$600(Lorg/apache/tools/ant/taskdefs/Get;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lorg/apache/tools/ant/taskdefs/Get;->httpUseCaches:Z

    return p0
.end method

.method static synthetic access$700(Lorg/apache/tools/ant/taskdefs/Get;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lorg/apache/tools/ant/taskdefs/Get;->authenticateOnRedirect:Z

    return p0
.end method

.method static synthetic access$800(Lorg/apache/tools/ant/taskdefs/Get;)I
    .locals 0

    .line 61
    iget p0, p0, Lorg/apache/tools/ant/taskdefs/Get;->numberRetries:I

    return p0
.end method

.method static synthetic access$900(Lorg/apache/tools/ant/taskdefs/Get;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lorg/apache/tools/ant/taskdefs/Get;->verbose:Z

    return p0
.end method

.method private checkAttributes()V
    .locals 3

    .line 277
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get;->userAgent:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 281
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get;->sources:Lorg/apache/tools/ant/types/resources/Resources;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Resources;->size()I

    move-result v0

    if-eqz v0, :cond_8

    .line 285
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get;->sources:Lorg/apache/tools/ant/types/resources/Resources;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Resources;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/Resource;

    .line 286
    const-class v2, Lorg/apache/tools/ant/types/resources/URLProvider;

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/resources/URLProvider;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 288
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Only URLProvider resources are supported"

    .line 289
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Get;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 293
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get;->destination:Ljava/io/File;

    if-eqz v0, :cond_7

    .line 297
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get;->sources:Lorg/apache/tools/ant/types/resources/Resources;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Resources;->size()I

    move-result v0

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get;->destination:Ljava/io/File;

    .line 298
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 299
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "The specified destination is not a directory"

    .line 300
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Get;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 303
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get;->destination:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get;->destination:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    .line 304
    :cond_4
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t write to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Get;->destination:Ljava/io/File;

    .line 305
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 306
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Get;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 309
    :cond_5
    :goto_2
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get;->sources:Lorg/apache/tools/ant/types/resources/Resources;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Resources;->size()I

    move-result v0

    if-le v0, v1, :cond_6

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get;->destination:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_6

    .line 310
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get;->destination:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_6
    return-void

    .line 294
    :cond_7
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "dest attribute is required"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Get;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 282
    :cond_8
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "at least one source is required"

    .line 283
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Get;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 278
    :cond_9
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "userAgent may not be null or empty"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isMoved(I)Z
    .locals 1

    const/16 v0, 0x12d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x133

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .locals 1

    .line 329
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get;->sources:Lorg/apache/tools/ant/types/resources/Resources;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/resources/Resources;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    return-void
.end method

.method public add(Lorg/apache/tools/ant/util/FileNameMapper;)V
    .locals 1

    .line 537
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Get;->createMapper()Lorg/apache/tools/ant/types/Mapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Mapper;->add(Lorg/apache/tools/ant/util/FileNameMapper;)V

    return-void
.end method

.method public addConfiguredHeader(Lorg/apache/tools/ant/taskdefs/email/Header;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 508
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/email/Header;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/util/StringUtils;->trimToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 509
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/email/Header;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/tools/ant/util/StringUtils;->trimToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 511
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Get;->headers:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public createMapper()Lorg/apache/tools/ant/types/Mapper;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 523
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    if-nez v0, :cond_0

    .line 527
    new-instance v0, Lorg/apache/tools/ant/types/Mapper;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Get;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Mapper;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    return-object v0

    .line 524
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Cannot define more than one mapper"

    .line 525
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Get;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method public doGet(ILorg/apache/tools/ant/taskdefs/Get$DownloadProgress;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 183
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Get;->checkAttributes()V

    .line 184
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get;->sources:Lorg/apache/tools/ant/types/resources/Resources;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Resources;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Resource;

    const-class v1, Lorg/apache/tools/ant/types/resources/URLProvider;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/URLProvider;

    invoke-interface {v0}, Lorg/apache/tools/ant/types/resources/URLProvider;->getURL()Ljava/net/URL;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Get;->destination:Ljava/io/File;

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/apache/tools/ant/taskdefs/Get;->doGet(Ljava/net/URL;Ljava/io/File;ILorg/apache/tools/ant/taskdefs/Get$DownloadProgress;)Z

    move-result p1

    return p1
.end method

.method public doGet(Ljava/net/URL;Ljava/io/File;ILorg/apache/tools/ant/taskdefs/Get$DownloadProgress;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v10, p0

    move/from16 v8, p3

    .line 210
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v11, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, v10, Lorg/apache/tools/ant/taskdefs/Get;->skipExisting:Z

    if-eqz v0, :cond_0

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Destination already exists (skipping): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 212
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    invoke-virtual {p0, v0, v8}, Lorg/apache/tools/ant/taskdefs/Get;->log(Ljava/lang/String;I)V

    return v11

    :cond_0
    if-nez p4, :cond_1

    .line 218
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Get$NullProgress;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/Get$NullProgress;-><init>()V

    move-object v7, v0

    goto :goto_0

    :cond_1
    move-object/from16 v7, p4

    .line 220
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Getting: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v8}, Lorg/apache/tools/ant/taskdefs/Get;->log(Ljava/lang/String;I)V

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "To: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v8}, Lorg/apache/tools/ant/taskdefs/Get;->log(Ljava/lang/String;I)V

    .line 227
    iget-boolean v0, v10, Lorg/apache/tools/ant/taskdefs/Get;->useTimestamp:Z

    const/4 v12, 0x0

    if-eqz v0, :cond_3

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 228
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 229
    iget-boolean v3, v10, Lorg/apache/tools/ant/taskdefs/Get;->verbose:Z

    if-eqz v3, :cond_2

    .line 230
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 231
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "local file date : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v8}, Lorg/apache/tools/ant/taskdefs/Get;->log(Ljava/lang/String;I)V

    :cond_2
    move-wide v5, v0

    move v4, v11

    goto :goto_1

    :cond_3
    const-wide/16 v0, 0x0

    move-wide v5, v0

    move v4, v12

    .line 236
    :goto_1
    new-instance v13, Lorg/apache/tools/ant/taskdefs/Get$GetThread;

    iget-object v9, v10, Lorg/apache/tools/ant/taskdefs/Get;->userAgent:Ljava/lang/String;

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v8, p3

    invoke-direct/range {v0 .. v9}, Lorg/apache/tools/ant/taskdefs/Get$GetThread;-><init>(Lorg/apache/tools/ant/taskdefs/Get;Ljava/net/URL;Ljava/io/File;ZJLorg/apache/tools/ant/taskdefs/Get$DownloadProgress;ILjava/lang/String;)V

    .line 239
    invoke-virtual {v13, v11}, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->setDaemon(Z)V

    .line 240
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Get;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0, v13, p0}, Lorg/apache/tools/ant/Project;->registerThreadTask(Ljava/lang/Thread;Lorg/apache/tools/ant/Task;)V

    .line 241
    invoke-virtual {v13}, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->start()V

    .line 243
    :try_start_0
    iget-wide v0, v10, Lorg/apache/tools/ant/taskdefs/Get;->maxTime:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-virtual {v13, v0, v1}, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string v0, "interrupted waiting for GET to finish"

    const/4 v1, 0x3

    .line 245
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Get;->log(Ljava/lang/String;I)V

    .line 249
    :goto_2
    invoke-virtual {v13}, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The GET operation took longer than "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, v10, Lorg/apache/tools/ant/taskdefs/Get;->maxTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seconds, stopping it."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 252
    iget-boolean v1, v10, Lorg/apache/tools/ant/taskdefs/Get;->ignoreErrors:Z

    if-eqz v1, :cond_4

    .line 253
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Get;->log(Ljava/lang/String;)V

    .line 255
    :cond_4
    invoke-virtual {v13}, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->closeStreams()V

    .line 256
    iget-boolean v1, v10, Lorg/apache/tools/ant/taskdefs/Get;->ignoreErrors:Z

    if-eqz v1, :cond_5

    return v12

    .line 257
    :cond_5
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 262
    :cond_6
    invoke-virtual {v13}, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->wasSuccessful()Z

    move-result v0

    return v0
.end method

.method public execute()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 107
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Get;->checkAttributes()V

    .line 109
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get;->sources:Lorg/apache/tools/ant/types/resources/Resources;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Resources;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/Resource;

    .line 110
    const-class v2, Lorg/apache/tools/ant/types/resources/URLProvider;

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/tools/ant/types/resources/URLProvider;

    .line 111
    invoke-interface {v2}, Lorg/apache/tools/ant/types/resources/URLProvider;->getURL()Ljava/net/URL;

    move-result-object v2

    .line 113
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Get;->destination:Ljava/io/File;

    .line 114
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 115
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Get;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_2

    .line 116
    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v3, "/"

    .line 117
    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 118
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const/16 v3, 0x2f

    .line 120
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    .line 122
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 124
    :cond_1
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Get;->destination:Ljava/io/File;

    invoke-direct {v3, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1

    .line 126
    :cond_2
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Mapper;->getImplementation()Lorg/apache/tools/ant/util/FileNameMapper;

    move-result-object v3

    .line 127
    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Lorg/apache/tools/ant/util/FileNameMapper;->mapFileName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string v6, "skipping "

    if-nez v3, :cond_3

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - mapper can\'t handle it"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v5}, Lorg/apache/tools/ant/taskdefs/Get;->log(Ljava/lang/String;I)V

    goto :goto_0

    .line 133
    :cond_3
    array-length v7, v3

    if-nez v7, :cond_4

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - mapper returns no file name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v5}, Lorg/apache/tools/ant/taskdefs/Get;->log(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 138
    :cond_4
    array-length v7, v3

    if-le v7, v5, :cond_5

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - mapper returns multiple file names"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v5}, Lorg/apache/tools/ant/taskdefs/Get;->log(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 143
    :cond_5
    new-instance v1, Ljava/io/File;

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/Get;->destination:Ljava/io/File;

    aget-object v3, v3, v4

    invoke-direct {v1, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v3, v1

    .line 150
    :cond_6
    :goto_1
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Get;->verbose:Z

    if-eqz v1, :cond_7

    .line 151
    new-instance v1, Lorg/apache/tools/ant/taskdefs/Get$VerboseProgress;

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v1, v4}, Lorg/apache/tools/ant/taskdefs/Get$VerboseProgress;-><init>(Ljava/io/PrintStream;)V

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    :goto_2
    const/4 v4, 0x2

    .line 156
    :try_start_0
    invoke-virtual {p0, v2, v3, v4, v1}, Lorg/apache/tools/ant/taskdefs/Get;->doGet(Ljava/net/URL;Ljava/io/File;ILorg/apache/tools/ant/taskdefs/Get$DownloadProgress;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    .line 158
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error getting "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/taskdefs/Get;->log(Ljava/lang/String;)V

    .line 159
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Get;->ignoreErrors:Z

    if-eqz v2, :cond_8

    goto/16 :goto_0

    .line 160
    :cond_8
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Get;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v0

    :cond_9
    return-void
.end method

.method public log(Ljava/lang/String;I)V
    .locals 1

    .line 267
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Get;->quiet:Z

    if-eqz v0, :cond_0

    if-gtz p2, :cond_1

    .line 268
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/tools/ant/Task;->log(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public setAuthenticateOnRedirect(Z)V
    .locals 0

    .line 416
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Get;->authenticateOnRedirect:Z

    return-void
.end method

.method public setDest(Ljava/io/File;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Get;->destination:Ljava/io/File;

    return-void
.end method

.method public setHttpUseCaches(Z)V
    .locals 0

    .line 484
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Get;->httpUseCaches:Z

    return-void
.end method

.method public setIgnoreErrors(Z)V
    .locals 0

    .line 366
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Get;->ignoreErrors:Z

    return-void
.end method

.method public setMaxTime(J)V
    .locals 0

    .line 427
    iput-wide p1, p0, Lorg/apache/tools/ant/taskdefs/Get;->maxTime:J

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    .line 406
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Get;->pword:Ljava/lang/String;

    return-void
.end method

.method public setQuiet(Z)V
    .locals 0

    .line 357
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Get;->quiet:Z

    return-void
.end method

.method public setRetries(I)V
    .locals 2

    if-gtz p1, :cond_0

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Setting retries to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " will make the task not even try to reach the URI at all"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Get;->log(Ljava/lang/String;I)V

    .line 446
    :cond_0
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/Get;->numberRetries:I

    return-void
.end method

.method public setSkipExisting(Z)V
    .locals 0

    .line 456
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Get;->skipExisting:Z

    return-void
.end method

.method public setSrc(Ljava/net/URL;)V
    .locals 1

    .line 320
    new-instance v0, Lorg/apache/tools/ant/types/resources/URLResource;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/types/resources/URLResource;-><init>(Ljava/net/URL;)V

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Get;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    return-void
.end method

.method public setTryGzipEncoding(Z)V
    .locals 0

    .line 498
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Get;->tryGzipEncoding:Z

    return-void
.end method

.method public setUseTimestamp(Z)V
    .locals 0

    .line 388
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Get;->useTimestamp:Z

    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 0

    .line 469
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Get;->userAgent:Ljava/lang/String;

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    .line 397
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Get;->uname:Ljava/lang/String;

    return-void
.end method

.method public setVerbose(Z)V
    .locals 0

    .line 347
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Get;->verbose:Z

    return-void
.end method
