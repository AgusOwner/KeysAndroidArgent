.class public Lorg/apache/tools/ant/types/ZipScanner;
.super Lorg/apache/tools/ant/types/ArchiveScanner;
.source "ZipScanner.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/apache/tools/ant/types/ArchiveScanner;-><init>()V

    return-void
.end method

.method static synthetic lambda$fillMapsFromArchive$0()Lorg/apache/tools/ant/BuildException;
    .locals 2

    .line 60
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Only file provider resources are supported"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected fillMapsFromArchive(Lorg/apache/tools/ant/types/Resource;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/types/Resource;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;)V"
        }
    .end annotation

    .line 59
    const-class v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    move-object v1, p1

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/Resource;->asOptional(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/taskdefs/ImportTask$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/ImportTask$$ExternalSyntheticLambda0;-><init>()V

    .line 60
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/types/ZipScanner$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/apache/tools/ant/types/ZipScanner$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/io/File;

    .line 63
    :try_start_0
    new-instance v10, Lorg/apache/tools/zip/ZipFile;

    move-object v0, p2

    invoke-direct {v10, v9, p2}, Lorg/apache/tools/zip/ZipFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :try_start_1
    invoke-virtual {v10}, Lorg/apache/tools/zip/ZipFile;->getEntries()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/tools/ant/util/StreamUtils;->enumerationAsStream(Ljava/util/Enumeration;)Ljava/util/stream/Stream;

    move-result-object v11

    new-instance v12, Lorg/apache/tools/ant/types/ZipScanner$$ExternalSyntheticLambda1;

    move-object v1, v12

    move-object v2, p0

    move-object v3, v9

    move-object v4, p2

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-direct/range {v1 .. v8}, Lorg/apache/tools/ant/types/ZipScanner$$ExternalSyntheticLambda1;-><init>(Lorg/apache/tools/ant/types/ZipScanner;Ljava/io/File;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    invoke-interface {v11, v12}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    :try_start_2
    invoke-virtual {v10}, Lorg/apache/tools/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/util/zip/ZipException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 63
    :try_start_3
    invoke-virtual {v10}, Lorg/apache/tools/zip/ZipFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/util/zip/ZipException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 83
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Problem opening "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 81
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Problem reading "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method synthetic lambda$fillMapsFromArchive$1$org-apache-tools-ant-types-ZipScanner(Ljava/io/File;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lorg/apache/tools/zip/ZipEntry;)V
    .locals 1

    .line 65
    new-instance v0, Lorg/apache/tools/ant/types/resources/ZipResource;

    invoke-direct {v0, p1, p2, p7}, Lorg/apache/tools/ant/types/resources/ZipResource;-><init>(Ljava/io/File;Ljava/lang/String;Lorg/apache/tools/zip/ZipEntry;)V

    .line 66
    invoke-virtual {p7}, Lorg/apache/tools/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p1

    .line 67
    invoke-virtual {p7}, Lorg/apache/tools/zip/ZipEntry;->isDirectory()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 68
    invoke-static {p1}, Lorg/apache/tools/ant/types/ZipScanner;->trimSeparator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 69
    invoke-interface {p3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/ZipScanner;->match(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 71
    invoke-interface {p4, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 74
    :cond_0
    invoke-interface {p5, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/ZipScanner;->match(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 76
    invoke-interface {p6, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method
