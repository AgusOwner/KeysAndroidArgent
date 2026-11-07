.class public Lorg/apache/tools/ant/util/ResourceUtils;
.super Ljava/lang/Object;
.source "ResourceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/util/ResourceUtils$ResourceSelectorProvider;,
        Lorg/apache/tools/ant/util/ResourceUtils$ReadOnlyTargetFileException;
    }
.end annotation


# static fields
.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

.field public static final ISO_8859_1:Ljava/lang/String; = "ISO-8859-1"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final MAX_IO_CHUNK_SIZE:J = 0x1000000L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/util/ResourceUtils;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static areSame(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 792
    :cond_0
    const-class v1, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/tools/ant/types/resources/FileProvider;

    .line 793
    const-class v1, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {p1, v1}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/tools/ant/types/resources/FileProvider;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 795
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v1

    invoke-interface {p0}, Lorg/apache/tools/ant/types/resources/FileProvider;->getFile()Ljava/io/File;

    move-result-object p0

    invoke-interface {p1}, Lorg/apache/tools/ant/types/resources/FileProvider;->getFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Lorg/apache/tools/ant/util/FileUtils;->areSame(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public static asFileResource(Lorg/apache/tools/ant/types/resources/FileProvider;)Lorg/apache/tools/ant/types/resources/FileResource;
    .locals 2

    .line 541
    instance-of v0, p0, Lorg/apache/tools/ant/types/resources/FileResource;

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 544
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResource;

    invoke-static {p0}, Lorg/apache/tools/ant/Project;->getProject(Ljava/lang/Object;)Lorg/apache/tools/ant/Project;

    move-result-object v1

    .line 545
    invoke-interface {p0}, Lorg/apache/tools/ant/types/resources/FileProvider;->getFile()Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Lorg/apache/tools/ant/Project;Ljava/io/File;)V

    return-object v0

    .line 542
    :cond_1
    :goto_0
    check-cast p0, Lorg/apache/tools/ant/types/resources/FileResource;

    return-object p0
.end method

.method private static binaryCompare(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 564
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 565
    :try_start_0
    new-instance p0, Ljava/io/BufferedInputStream;

    .line 566
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 568
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_2

    .line 569
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq p1, v2, :cond_0

    if-le p1, v2, :cond_1

    const/4 v1, 0x1

    .line 575
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return v1

    .line 574
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne p1, v1, :cond_3

    const/4 v1, 0x0

    .line 575
    :cond_3
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return v1

    :catchall_0
    move-exception p1

    .line 564
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_6
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p0

    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
.end method

.method private static charsetFor(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 0

    if-nez p0, :cond_0

    .line 681
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static compareContent(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;Z)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 509
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/Resource;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 512
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->isExists()Z

    move-result v0

    .line 513
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->isExists()Z

    move-result v2

    if-nez v0, :cond_1

    if-nez v2, :cond_1

    return v1

    :cond_1
    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eq v0, v2, :cond_3

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v3, v4

    :goto_0
    return v3

    .line 520
    :cond_3
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->isDirectory()Z

    move-result v0

    .line 521
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->isDirectory()Z

    move-result v2

    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    return v1

    :cond_4
    if-nez v0, :cond_7

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    if-eqz p2, :cond_6

    .line 528
    invoke-static {p0, p1}, Lorg/apache/tools/ant/util/ResourceUtils;->textCompare(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;)I

    move-result p0

    goto :goto_1

    :cond_6
    invoke-static {p0, p1}, Lorg/apache/tools/ant/util/ResourceUtils;->binaryCompare(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;)I

    move-result p0

    :goto_1
    return p0

    :cond_7
    :goto_2
    if-eqz v0, :cond_8

    move v3, v4

    :cond_8
    return v3
.end method

.method public static contentEquals(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;Z)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 468
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->isExists()Z

    move-result v0

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->isExists()Z

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 471
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->isExists()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    return v1

    .line 477
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 481
    :cond_2
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/Resource;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    if-nez p2, :cond_4

    .line 485
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->getSize()J

    move-result-wide v3

    .line 486
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getSize()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v0, v3, v7

    if-eqz v0, :cond_4

    cmp-long v0, v5, v7

    if-eqz v0, :cond_4

    cmp-long v0, v3, v5

    if-eqz v0, :cond_4

    return v2

    .line 492
    :cond_4
    invoke-static {p0, p1, p2}, Lorg/apache/tools/ant/util/ResourceUtils;->compareContent(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;Z)I

    move-result p0

    if-nez p0, :cond_5

    move v2, v1

    :cond_5
    :goto_0
    return v2
.end method

.method public static copyResource(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 241
    invoke-static {p0, p1, v0}, Lorg/apache/tools/ant/util/ResourceUtils;->copyResource(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/Project;)V

    return-void
.end method

.method public static copyResource(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/Project;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v8, p2

    .line 260
    invoke-static/range {v0 .. v8}, Lorg/apache/tools/ant/util/ResourceUtils;->copyResource(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/FilterSetCollection;Ljava/util/Vector;ZZLjava/lang/String;Ljava/lang/String;Lorg/apache/tools/ant/Project;)V

    return-void
.end method

.method public static copyResource(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/FilterSetCollection;Ljava/util/Vector;ZZLjava/lang/String;Ljava/lang/String;Lorg/apache/tools/ant/Project;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/types/Resource;",
            "Lorg/apache/tools/ant/types/Resource;",
            "Lorg/apache/tools/ant/types/FilterSetCollection;",
            "Ljava/util/Vector<",
            "Lorg/apache/tools/ant/types/FilterChain;",
            ">;ZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/Project;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 297
    invoke-static/range {v0 .. v9}, Lorg/apache/tools/ant/util/ResourceUtils;->copyResource(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/FilterSetCollection;Ljava/util/Vector;ZZZLjava/lang/String;Ljava/lang/String;Lorg/apache/tools/ant/Project;)V

    return-void
.end method

.method public static copyResource(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/FilterSetCollection;Ljava/util/Vector;ZZZLjava/lang/String;Ljava/lang/String;Lorg/apache/tools/ant/Project;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/types/Resource;",
            "Lorg/apache/tools/ant/types/Resource;",
            "Lorg/apache/tools/ant/types/FilterSetCollection;",
            "Ljava/util/Vector<",
            "Lorg/apache/tools/ant/types/FilterChain;",
            ">;ZZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/Project;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    .line 335
    invoke-static/range {v0 .. v10}, Lorg/apache/tools/ant/util/ResourceUtils;->copyResource(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/FilterSetCollection;Ljava/util/Vector;ZZZLjava/lang/String;Ljava/lang/String;Lorg/apache/tools/ant/Project;Z)V

    return-void
.end method

.method public static copyResource(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/FilterSetCollection;Ljava/util/Vector;ZZZLjava/lang/String;Ljava/lang/String;Lorg/apache/tools/ant/Project;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/types/Resource;",
            "Lorg/apache/tools/ant/types/Resource;",
            "Lorg/apache/tools/ant/types/FilterSetCollection;",
            "Ljava/util/Vector<",
            "Lorg/apache/tools/ant/types/FilterChain;",
            ">;ZZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/Project;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v9, p0

    move-object v10, p1

    move/from16 v5, p6

    move-object/from16 v0, p8

    move-object/from16 v8, p9

    if-nez p4, :cond_0

    .line 376
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/util/FileUtils;->getFileTimestampGranularity()J

    move-result-wide v1

    .line 375
    invoke-static {p0, p1, v1, v2}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->isOutOfDate(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;J)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    .line 380
    invoke-virtual {p2}, Lorg/apache/tools/ant/types/FilterSetCollection;->hasFilters()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    if-eqz p3, :cond_2

    .line 382
    invoke-virtual {p3}, Ljava/util/Vector;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v1

    .line 383
    :goto_1
    const-class v6, Lorg/apache/tools/ant/types/resources/StringResource;

    invoke-virtual {p0, v6}, Lorg/apache/tools/ant/types/Resource;->asOptional(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v6

    new-instance v7, Lorg/apache/tools/ant/util/ResourceUtils$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lorg/apache/tools/ant/util/ResourceUtils$$ExternalSyntheticLambda0;-><init>()V

    .line 384
    invoke-virtual {v6, v7}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v6

    move-object/from16 v7, p7

    invoke-virtual {v6, v7}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 386
    const-class v7, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {p1, v7}, Lorg/apache/tools/ant/types/Resource;->asOptional(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v7

    new-instance v11, Lorg/apache/tools/ant/taskdefs/ImportTask$$ExternalSyntheticLambda0;

    invoke-direct {v11}, Lorg/apache/tools/ant/taskdefs/ImportTask$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v7, v11}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v7

    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    if-eqz v7, :cond_5

    .line 388
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v7}, Ljava/io/File;->canWrite()Z

    move-result v11

    if-nez v11, :cond_5

    if-eqz p10, :cond_4

    .line 392
    sget-object v11, Lorg/apache/tools/ant/util/ResourceUtils;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v11, v7}, Lorg/apache/tools/ant/util/FileUtils;->tryHardToDelete(Ljava/io/File;)Z

    move-result v11

    if-eqz v11, :cond_3

    goto :goto_2

    .line 393
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed to delete read-only destination file "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 390
    :cond_4
    new-instance v0, Lorg/apache/tools/ant/util/ResourceUtils$ReadOnlyTargetFileException;

    invoke-direct {v0, v7}, Lorg/apache/tools/ant/util/ResourceUtils$ReadOnlyTargetFileException;-><init>(Ljava/io/File;)V

    throw v0

    :cond_5
    :goto_2
    if-eqz v3, :cond_6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move/from16 v5, p6

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    .line 398
    invoke-static/range {v1 .. v8}, Lorg/apache/tools/ant/util/ResourceUtils;->copyWithFilterSets(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/FilterSetCollection;Ljava/util/Vector;ZLjava/lang/String;Ljava/lang/String;Lorg/apache/tools/ant/Project;)V

    goto/16 :goto_5

    :cond_6
    if-nez v4, :cond_b

    if-eqz v6, :cond_7

    .line 403
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_7
    if-nez v6, :cond_8

    if-eqz v0, :cond_8

    goto :goto_4

    .line 411
    :cond_8
    const-class v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    if-eqz v7, :cond_a

    if-nez v5, :cond_a

    .line 413
    const-class v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    .line 414
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-interface {v0}, Lorg/apache/tools/ant/types/resources/FileProvider;->getFile()Ljava/io/File;

    move-result-object v3

    .line 416
    :try_start_0
    invoke-static {v3, v7, v8}, Lorg/apache/tools/ant/util/ResourceUtils;->copyUsingFileChannels(Ljava/io/File;Ljava/io/File;Lorg/apache/tools/ant/Project;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v4, v0

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "Attempt to copy "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " using NIO Channels failed due to \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 421
    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'.  Falling back to streams."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v8, :cond_9

    .line 424
    invoke-virtual {v8, v0, v2}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    goto :goto_3

    .line 426
    :cond_9
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_a
    :goto_3
    if-nez v1, :cond_c

    .line 431
    invoke-static {p0, p1, v5, v8}, Lorg/apache/tools/ant/util/ResourceUtils;->copyUsingStreams(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;ZLorg/apache/tools/ant/Project;)V

    goto :goto_5

    :cond_b
    :goto_4
    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move/from16 v4, p6

    move-object v5, v6

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    .line 405
    invoke-static/range {v1 .. v7}, Lorg/apache/tools/ant/util/ResourceUtils;->copyWithFilterChainsOrTranscoding(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;Ljava/util/Vector;ZLjava/lang/String;Ljava/lang/String;Lorg/apache/tools/ant/Project;)V

    :cond_c
    :goto_5
    if-eqz p5, :cond_d

    .line 435
    const-class v0, Lorg/apache/tools/ant/types/resources/Touchable;

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/Resource;->asOptional(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/util/ResourceUtils$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/util/ResourceUtils$$ExternalSyntheticLambda1;-><init>(Lorg/apache/tools/ant/types/Resource;)V

    .line 436
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_d
    return-void
.end method

.method private static copyUsingFileChannels(Ljava/io/File;Ljava/io/File;Lorg/apache/tools/ant/Project;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 720
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/apache/tools/ant/util/FileUtils;->areSame(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 722
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Skipping (self) copy of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " to "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lorg/apache/tools/ant/util/ResourceUtils;->log(Lorg/apache/tools/ant/Project;Ljava/lang/String;)V

    return-void

    .line 725
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 726
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    .line 727
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 728
    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "failed to create the parent directory for "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 733
    :cond_2
    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    const/4 p2, 0x1

    new-array v0, p2, [Ljava/nio/file/OpenOption;

    sget-object v1, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

    move-result-object p0

    .line 734
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    sget-object v1, Ljava/nio/file/StandardOpenOption;->CREATE:Ljava/nio/file/StandardOpenOption;

    aput-object v1, v0, v2

    sget-object v1, Ljava/nio/file/StandardOpenOption;->TRUNCATE_EXISTING:Ljava/nio/file/StandardOpenOption;

    aput-object v1, v0, p2

    sget-object p2, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {p1, v0}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 739
    :try_start_1
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    move-wide v9, v2

    :goto_1
    cmp-long p2, v9, v0

    if-gez p2, :cond_3

    const-wide/32 v2, 0x1000000

    sub-long v4, v0, v9

    .line 742
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    move-object v3, p1

    move-object v4, p0

    move-wide v5, v9

    .line 744
    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-long/2addr v9, v2

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    .line 746
    :try_start_2
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_4
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V

    :cond_5
    return-void

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_6

    .line 732
    :try_start_3
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz p0, :cond_7

    :try_start_5
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_3
    throw p1
.end method

.method private static copyUsingStreams(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;ZLorg/apache/tools/ant/Project;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 753
    invoke-static {p0, p1}, Lorg/apache/tools/ant/util/ResourceUtils;->areSame(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 755
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Skipping (self) copy of "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " to "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lorg/apache/tools/ant/util/ResourceUtils;->log(Lorg/apache/tools/ant/Project;Ljava/lang/String;)V

    return-void

    .line 758
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    .line 759
    :try_start_0
    invoke-static {p1, p2, p3}, Lorg/apache/tools/ant/util/ResourceUtils;->getOutputStream(Lorg/apache/tools/ant/types/Resource;ZLorg/apache/tools/ant/Project;)Ljava/io/OutputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 p2, 0x2000

    :try_start_1
    new-array p3, p2, [B

    const/4 v0, 0x0

    move v1, v0

    .line 764
    :cond_1
    invoke-virtual {p1, p3, v0, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 765
    invoke-virtual {p0, p3, v0, p2}, Ljava/io/InputStream;->read([BII)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    if-eqz p1, :cond_2

    .line 767
    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_2
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_3
    return-void

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_4

    .line 758
    :try_start_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz p0, :cond_5

    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw p1
.end method

.method private static copyWithFilterChainsOrTranscoding(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;Ljava/util/Vector;ZLjava/lang/String;Ljava/lang/String;Lorg/apache/tools/ant/Project;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/types/Resource;",
            "Lorg/apache/tools/ant/types/Resource;",
            "Ljava/util/Vector<",
            "Lorg/apache/tools/ant/types/FilterChain;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/Project;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 693
    invoke-static {p0, p1}, Lorg/apache/tools/ant/util/ResourceUtils;->areSame(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 695
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Skipping (self) copy of "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " to "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p6, p0}, Lorg/apache/tools/ant/util/ResourceUtils;->log(Lorg/apache/tools/ant/Project;Ljava/lang/String;)V

    return-void

    .line 700
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    .line 699
    invoke-static {p6, p4, p2, p0}, Lorg/apache/tools/ant/util/ResourceUtils;->filterWith(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/util/Vector;Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object p0

    .line 701
    :try_start_0
    new-instance p2, Ljava/io/BufferedWriter;

    new-instance p4, Ljava/io/OutputStreamWriter;

    .line 702
    invoke-static {p1, p3, p6}, Lorg/apache/tools/ant/util/ResourceUtils;->getOutputStream(Lorg/apache/tools/ant/types/Resource;ZLorg/apache/tools/ant/Project;)Ljava/io/OutputStream;

    move-result-object p1

    .line 703
    invoke-static {p5}, Lorg/apache/tools/ant/util/ResourceUtils;->charsetFor(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p3

    invoke-direct {p4, p1, p3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p2, p4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 p1, 0x2000

    :try_start_1
    new-array p3, p1, [C

    :goto_0
    const/4 p4, 0x0

    .line 706
    invoke-virtual {p0, p3, p4, p1}, Ljava/io/Reader;->read([CII)I

    move-result p5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p6, -0x1

    if-ne p5, p6, :cond_2

    .line 712
    :try_start_2
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    :cond_1
    return-void

    .line 710
    :cond_2
    :try_start_3
    invoke-virtual {p2, p3, p4, p5}, Ljava/io/BufferedWriter;->write([CII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 699
    :try_start_4
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p2

    :try_start_5
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz p0, :cond_3

    :try_start_6
    invoke-virtual {p0}, Ljava/io/Reader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw p1
.end method

.method private static copyWithFilterSets(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/FilterSetCollection;Ljava/util/Vector;ZLjava/lang/String;Ljava/lang/String;Lorg/apache/tools/ant/Project;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/types/Resource;",
            "Lorg/apache/tools/ant/types/Resource;",
            "Lorg/apache/tools/ant/types/FilterSetCollection;",
            "Ljava/util/Vector<",
            "Lorg/apache/tools/ant/types/FilterChain;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/Project;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 638
    invoke-static {p0, p1}, Lorg/apache/tools/ant/util/ResourceUtils;->areSame(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 640
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Skipping (self) copy of "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " to "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p7, p0}, Lorg/apache/tools/ant/util/ResourceUtils;->log(Lorg/apache/tools/ant/Project;Ljava/lang/String;)V

    return-void

    .line 645
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    .line 644
    invoke-static {p7, p5, p3, p0}, Lorg/apache/tools/ant/util/ResourceUtils;->filterWith(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/util/Vector;Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object p0

    .line 646
    :try_start_0
    new-instance p3, Ljava/io/BufferedWriter;

    new-instance p5, Ljava/io/OutputStreamWriter;

    .line 647
    invoke-static {p1, p4, p7}, Lorg/apache/tools/ant/util/ResourceUtils;->getOutputStream(Lorg/apache/tools/ant/types/Resource;ZLorg/apache/tools/ant/Project;)Ljava/io/OutputStream;

    move-result-object p1

    .line 648
    invoke-static {p6}, Lorg/apache/tools/ant/util/ResourceUtils;->charsetFor(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p4

    invoke-direct {p5, p1, p4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p3, p5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 650
    :try_start_1
    new-instance p1, Lorg/apache/tools/ant/util/LineTokenizer;

    invoke-direct {p1}, Lorg/apache/tools/ant/util/LineTokenizer;-><init>()V

    const/4 p4, 0x1

    .line 651
    invoke-virtual {p1, p4}, Lorg/apache/tools/ant/util/LineTokenizer;->setIncludeDelims(Z)V

    .line 652
    invoke-virtual {p1, p0}, Lorg/apache/tools/ant/util/LineTokenizer;->getToken(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object p4

    :goto_0
    if-eqz p4, :cond_2

    .line 654
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p5

    if-eqz p5, :cond_1

    .line 657
    invoke-virtual {p3}, Ljava/io/BufferedWriter;->newLine()V

    goto :goto_1

    .line 659
    :cond_1
    invoke-virtual {p2, p4}, Lorg/apache/tools/ant/types/FilterSetCollection;->replaceTokens(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 661
    :goto_1
    invoke-virtual {p1, p0}, Lorg/apache/tools/ant/util/LineTokenizer;->getToken(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 663
    :cond_2
    :try_start_2
    invoke-virtual {p3}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 644
    :try_start_3
    invoke-virtual {p3}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz p0, :cond_4

    :try_start_5
    invoke-virtual {p0}, Ljava/io/Reader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    throw p1
.end method

.method private static filterWith(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/util/Vector;Ljava/io/InputStream;)Ljava/io/Reader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/Project;",
            "Ljava/lang/String;",
            "Ljava/util/Vector<",
            "Lorg/apache/tools/ant/types/FilterChain;",
            ">;",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/io/Reader;"
        }
    .end annotation

    .line 668
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-static {p1}, Lorg/apache/tools/ant/util/ResourceUtils;->charsetFor(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-direct {v0, p3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    if-eqz p2, :cond_0

    .line 669
    invoke-virtual {p2}, Ljava/util/Vector;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 670
    new-instance p1, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;

    invoke-direct {p1}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;-><init>()V

    const/16 p3, 0x2000

    .line 671
    invoke-virtual {p1, p3}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->setBufferSize(I)V

    .line 672
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->setPrimaryReader(Ljava/io/Reader;)V

    .line 673
    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->setFilterChains(Ljava/util/Vector;)V

    .line 674
    invoke-virtual {p1, p0}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 675
    invoke-virtual {p1}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->getAssembledReader()Lorg/apache/tools/ant/filters/util/ChainReaderHelper$ChainReader;

    move-result-object v0

    .line 677
    :cond_0
    new-instance p0, Ljava/io/BufferedReader;

    invoke-direct {p0, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    return-object p0
.end method

.method private static getOutputStream(Lorg/apache/tools/ant/types/Resource;ZLorg/apache/tools/ant/Project;)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 773
    const-class p1, Lorg/apache/tools/ant/types/resources/Appendable;

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/tools/ant/types/resources/Appendable;

    if-eqz p1, :cond_0

    .line 775
    invoke-interface {p1}, Lorg/apache/tools/ant/types/resources/Appendable;->getAppendOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    return-object p0

    .line 777
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Appendable OutputStream not available for non-appendable resource "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "; using plain OutputStream"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_1

    const/4 v0, 0x3

    .line 780
    invoke-virtual {p2, p1, v0}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    goto :goto_0

    .line 782
    :cond_1
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 785
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$copyResource$2(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/resources/Touchable;)V
    .locals 2

    .line 436
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->getLastModified()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lorg/apache/tools/ant/util/ResourceUtils;->setLastModified(Lorg/apache/tools/ant/types/resources/Touchable;J)V

    return-void
.end method

.method static synthetic lambda$selectOutOfDateSources$0(Lorg/apache/tools/ant/types/Resource;JLorg/apache/tools/ant/types/Resource;)Z
    .locals 0

    .line 150
    invoke-static {p0, p3, p1, p2}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->isOutOfDate(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;J)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$selectOutOfDateSources$1(JLorg/apache/tools/ant/types/Resource;)Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;
    .locals 1

    .line 150
    new-instance v0, Lorg/apache/tools/ant/util/ResourceUtils$$ExternalSyntheticLambda3;

    invoke-direct {v0, p2, p0, p1}, Lorg/apache/tools/ant/util/ResourceUtils$$ExternalSyntheticLambda3;-><init>(Lorg/apache/tools/ant/types/Resource;J)V

    return-object v0
.end method

.method private static log(Lorg/apache/tools/ant/Project;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    .line 799
    invoke-static {p0, p1, v0}, Lorg/apache/tools/ant/util/ResourceUtils;->log(Lorg/apache/tools/ant/Project;Ljava/lang/String;I)V

    return-void
.end method

.method private static log(Lorg/apache/tools/ant/Project;Ljava/lang/String;I)V
    .locals 0

    if-nez p0, :cond_0

    .line 804
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 806
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private static logFuture(Lorg/apache/tools/ant/ProjectComponent;Lorg/apache/tools/ant/types/ResourceCollection;J)V
    .locals 2

    .line 618
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p2

    .line 619
    new-instance p2, Lorg/apache/tools/ant/types/resources/selectors/Date;

    invoke-direct {p2}, Lorg/apache/tools/ant/types/resources/selectors/Date;-><init>()V

    .line 620
    invoke-virtual {p2, v0, v1}, Lorg/apache/tools/ant/types/resources/selectors/Date;->setMillis(J)V

    .line 621
    sget-object p3, Lorg/apache/tools/ant/types/TimeComparison;->AFTER:Lorg/apache/tools/ant/types/TimeComparison;

    invoke-virtual {p2, p3}, Lorg/apache/tools/ant/types/resources/selectors/Date;->setWhen(Lorg/apache/tools/ant/types/TimeComparison;)V

    .line 622
    new-instance p3, Lorg/apache/tools/ant/types/resources/Restrict;

    invoke-direct {p3}, Lorg/apache/tools/ant/types/resources/Restrict;-><init>()V

    .line 623
    invoke-virtual {p3, p2}, Lorg/apache/tools/ant/types/resources/Restrict;->add(Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;)V

    .line 624
    invoke-virtual {p3, p1}, Lorg/apache/tools/ant/types/resources/Restrict;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 625
    invoke-virtual {p3}, Lorg/apache/tools/ant/types/resources/Restrict;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/tools/ant/types/Resource;

    .line 626
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Warning: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " modified in the future."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p0, p2, p3}, Lorg/apache/tools/ant/ProjectComponent;->log(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static selectOutOfDateSources(Lorg/apache/tools/ant/ProjectComponent;Lorg/apache/tools/ant/types/ResourceCollection;Lorg/apache/tools/ant/util/FileNameMapper;Lorg/apache/tools/ant/types/ResourceFactory;J)Lorg/apache/tools/ant/types/ResourceCollection;
    .locals 1

    .line 148
    invoke-static {p0, p1, p4, p5}, Lorg/apache/tools/ant/util/ResourceUtils;->logFuture(Lorg/apache/tools/ant/ProjectComponent;Lorg/apache/tools/ant/types/ResourceCollection;J)V

    .line 149
    new-instance v0, Lorg/apache/tools/ant/util/ResourceUtils$$ExternalSyntheticLambda2;

    invoke-direct {v0, p4, p5}, Lorg/apache/tools/ant/util/ResourceUtils$$ExternalSyntheticLambda2;-><init>(J)V

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/tools/ant/util/ResourceUtils;->selectSources(Lorg/apache/tools/ant/ProjectComponent;Lorg/apache/tools/ant/types/ResourceCollection;Lorg/apache/tools/ant/util/FileNameMapper;Lorg/apache/tools/ant/types/ResourceFactory;Lorg/apache/tools/ant/util/ResourceUtils$ResourceSelectorProvider;)Lorg/apache/tools/ant/types/ResourceCollection;

    move-result-object p0

    return-object p0
.end method

.method public static selectOutOfDateSources(Lorg/apache/tools/ant/ProjectComponent;[Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/util/FileNameMapper;Lorg/apache/tools/ant/types/ResourceFactory;)[Lorg/apache/tools/ant/types/Resource;
    .locals 7

    .line 98
    sget-object v0, Lorg/apache/tools/ant/util/ResourceUtils;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    .line 99
    invoke-virtual {v0}, Lorg/apache/tools/ant/util/FileUtils;->getFileTimestampGranularity()J

    move-result-wide v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 98
    invoke-static/range {v1 .. v6}, Lorg/apache/tools/ant/util/ResourceUtils;->selectOutOfDateSources(Lorg/apache/tools/ant/ProjectComponent;[Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/util/FileNameMapper;Lorg/apache/tools/ant/types/ResourceFactory;J)[Lorg/apache/tools/ant/types/Resource;

    move-result-object p0

    return-object p0
.end method

.method public static selectOutOfDateSources(Lorg/apache/tools/ant/ProjectComponent;[Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/util/FileNameMapper;Lorg/apache/tools/ant/types/ResourceFactory;J)[Lorg/apache/tools/ant/types/Resource;
    .locals 6

    .line 124
    new-instance v1, Lorg/apache/tools/ant/types/resources/Union;

    invoke-direct {v1}, Lorg/apache/tools/ant/types/resources/Union;-><init>()V

    .line 125
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/apache/tools/ant/types/resources/Union;->addAll(Ljava/util/Collection;)V

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    .line 127
    invoke-static/range {v0 .. v5}, Lorg/apache/tools/ant/util/ResourceUtils;->selectOutOfDateSources(Lorg/apache/tools/ant/ProjectComponent;Lorg/apache/tools/ant/types/ResourceCollection;Lorg/apache/tools/ant/util/FileNameMapper;Lorg/apache/tools/ant/types/ResourceFactory;J)Lorg/apache/tools/ant/types/ResourceCollection;

    move-result-object p0

    .line 128
    invoke-interface {p0}, Lorg/apache/tools/ant/types/ResourceCollection;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Lorg/apache/tools/ant/types/Resource;

    goto :goto_0

    :cond_0
    check-cast p0, Lorg/apache/tools/ant/types/resources/Union;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Union;->listResources()[Lorg/apache/tools/ant/types/Resource;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static selectSources(Lorg/apache/tools/ant/ProjectComponent;Lorg/apache/tools/ant/types/ResourceCollection;Lorg/apache/tools/ant/util/FileNameMapper;Lorg/apache/tools/ant/types/ResourceFactory;Lorg/apache/tools/ant/util/ResourceUtils$ResourceSelectorProvider;)Lorg/apache/tools/ant/types/ResourceCollection;
    .locals 10

    .line 172
    invoke-interface {p1}, Lorg/apache/tools/ant/types/ResourceCollection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    const-string p1, "No sources found."

    .line 173
    invoke-virtual {p0, p1, v1}, Lorg/apache/tools/ant/ProjectComponent;->log(Ljava/lang/String;I)V

    .line 174
    sget-object p0, Lorg/apache/tools/ant/types/resources/Resources;->NONE:Lorg/apache/tools/ant/types/ResourceCollection;

    return-object p0

    .line 176
    :cond_0
    invoke-static {p1}, Lorg/apache/tools/ant/types/resources/Union;->getInstance(Lorg/apache/tools/ant/types/ResourceCollection;)Lorg/apache/tools/ant/types/resources/Union;

    move-result-object p1

    .line 178
    new-instance v0, Lorg/apache/tools/ant/types/resources/Union;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/Union;-><init>()V

    .line 179
    invoke-interface {p1}, Lorg/apache/tools/ant/types/ResourceCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/tools/ant/types/Resource;

    .line 180
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2f

    if-eqz v3, :cond_1

    .line 182
    sget-char v5, Ljava/io/File;->separatorChar:C

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 188
    :cond_1
    :try_start_0
    invoke-interface {p2, v3}, Lorg/apache/tools/ant/util/FileNameMapper;->mapFileName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 190
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Caught "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " mapping resource "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lorg/apache/tools/ant/ProjectComponent;->log(Ljava/lang/String;I)V

    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_8

    .line 193
    array-length v5, v3

    if-nez v5, :cond_2

    goto/16 :goto_5

    .line 198
    :cond_2
    new-instance v5, Lorg/apache/tools/ant/types/resources/Union;

    invoke-direct {v5}, Lorg/apache/tools/ant/types/resources/Union;-><init>()V

    .line 199
    array-length v6, v3

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_4

    aget-object v8, v3, v7

    if-nez v8, :cond_3

    const-string v8, "(no name)"

    .line 203
    :cond_3
    sget-char v9, Ljava/io/File;->separatorChar:C

    .line 204
    invoke-virtual {v8, v9, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    .line 203
    invoke-interface {p3, v8}, Lorg/apache/tools/ant/types/ResourceFactory;->getResource(Ljava/lang/String;)Lorg/apache/tools/ant/types/Resource;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/apache/tools/ant/types/resources/Union;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 207
    :cond_4
    new-instance v3, Lorg/apache/tools/ant/types/resources/Restrict;

    invoke-direct {v3}, Lorg/apache/tools/ant/types/resources/Restrict;-><init>()V

    .line 208
    invoke-interface {p4, v2}, Lorg/apache/tools/ant/util/ResourceUtils$ResourceSelectorProvider;->getTargetSelectorForSource(Lorg/apache/tools/ant/types/Resource;)Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/types/resources/Restrict;->add(Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;)V

    .line 209
    invoke-virtual {v3, v5}, Lorg/apache/tools/ant/types/resources/Restrict;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 210
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/resources/Restrict;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 211
    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/resources/Union;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 212
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/resources/Restrict;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/tools/ant/types/Resource;

    .line 213
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " added as "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 214
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Resource;->isExists()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, " is outdated."

    goto :goto_3

    :cond_5
    const-string v3, " doesn\'t exist."

    :goto_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 213
    invoke-virtual {p0, v2, v1}, Lorg/apache/tools/ant/ProjectComponent;->log(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 219
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " omitted as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 220
    invoke-virtual {v5}, Lorg/apache/tools/ant/types/resources/Union;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 221
    invoke-virtual {v5}, Lorg/apache/tools/ant/types/resources/Union;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    const-string v3, " is"

    goto :goto_4

    :cond_7
    const-string v3, " are "

    :goto_4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " up to date."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 219
    invoke-virtual {p0, v2, v1}, Lorg/apache/tools/ant/ProjectComponent;->log(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 194
    :cond_8
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " skipped - don\'t know how to handle it"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lorg/apache/tools/ant/ProjectComponent;->log(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_9
    return-object v0
.end method

.method public static setLastModified(Lorg/apache/tools/ant/types/resources/Touchable;J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 451
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    :cond_0
    invoke-interface {p0, p1, p2}, Lorg/apache/tools/ant/types/resources/Touchable;->touch(J)V

    return-void
.end method

.method private static textCompare(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 589
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    .line 590
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 591
    :try_start_0
    new-instance p0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    .line 592
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 594
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    .line 596
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 597
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    if-nez v1, :cond_0

    .line 606
    :try_start_2
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    const/4 p0, 0x1

    return p0

    .line 601
    :cond_0
    :try_start_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 606
    :try_start_4
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return p1

    .line 603
    :cond_1
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 605
    :cond_2
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    const/4 p1, -0x1

    .line 606
    :goto_1
    :try_start_6
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return p1

    :catchall_0
    move-exception p1

    .line 589
    :try_start_7
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    :try_start_8
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception p0

    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p0
.end method
