.class public Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;
.super Lorg/apache/tools/ant/taskdefs/MatchingTask;
.source "Translate.java"


# static fields
.field private static final BUNDLE_DEFAULT_LANGUAGE:I = 0x6

.field private static final BUNDLE_DEFAULT_LANGUAGE_COUNTRY:I = 0x5

.field private static final BUNDLE_DEFAULT_LANGUAGE_COUNTRY_VARIANT:I = 0x4

.field private static final BUNDLE_MAX_ALTERNATIVES:I = 0x7

.field private static final BUNDLE_NOMATCH:I = 0x3

.field private static final BUNDLE_SPECIFIED_LANGUAGE:I = 0x2

.field private static final BUNDLE_SPECIFIED_LANGUAGE_COUNTRY:I = 0x1

.field private static final BUNDLE_SPECIFIED_LANGUAGE_COUNTRY_VARIANT:I

.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;


# instance fields
.field private bundle:Ljava/lang/String;

.field private bundleCountry:Ljava/lang/String;

.field private bundleEncoding:Ljava/lang/String;

.field private bundleLanguage:Ljava/lang/String;

.field private bundleLastModified:[J

.field private bundleVariant:Ljava/lang/String;

.field private destEncoding:Ljava/lang/String;

.field private destLastModified:J

.field private endToken:Ljava/lang/String;

.field private filesets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/types/FileSet;",
            ">;"
        }
    .end annotation
.end field

.field private forceOverwrite:Z

.field private loaded:Z

.field private resourceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private srcEncoding:Ljava/lang/String;

.field private srcLastModified:J

.field private startToken:Ljava/lang/String;

.field private toDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 152
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/MatchingTask;-><init>()V

    .line 142
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->filesets:Ljava/util/List;

    .line 147
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->resourceMap:Ljava/util/Map;

    const/4 v0, 0x7

    new-array v0, v0, [J

    .line 157
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->bundleLastModified:[J

    const/4 v0, 0x0

    .line 172
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->loaded:Z

    return-void
.end method

.method private loadResourceMap(Ljava/io/InputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 420
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->bundleEncoding:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 425
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x23

    if-eq v4, v3, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x21

    if-eq v4, v3, :cond_0

    const/16 v3, 0x3d

    .line 427
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v4, v3, :cond_1

    const/16 v3, 0x3a

    .line 429
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    :cond_1
    if-ne v4, v3, :cond_3

    move v5, v1

    .line 432
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 433
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v6

    if-eqz v6, :cond_2

    move v3, v5

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-eq v4, v3, :cond_0

    .line 441
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    .line 442
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_3
    const-string v3, "\\"

    .line 444
    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 445
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 446
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 448
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 453
    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 455
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->resourceMap:Ljava/util/Map;

    invoke-interface {v1, v4, p1}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 460
    :cond_5
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception p1

    .line 420
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 461
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method private loadResourceMaps()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 364
    new-instance v0, Ljava/util/Locale;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->bundleLanguage:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->bundleCountry:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->bundleVariant:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const-string v2, ""

    const-string v3, "_"

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 369
    :goto_0
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 370
    :goto_1
    invoke-virtual {v0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v0, v2

    goto :goto_2

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 372
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->bundle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    invoke-direct {p0, v0, v5, v5}, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->processBundle(Ljava/lang/String;IZ)V

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->bundle:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    invoke-direct {p0, v0, v4, v5}, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->processBundle(Ljava/lang/String;IZ)V

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->bundle:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, v5}, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->processBundle(Ljava/lang/String;IZ)V

    .line 375
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->bundle:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1, v5}, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->processBundle(Ljava/lang/String;IZ)V

    .line 379
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 381
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, v2

    goto :goto_3

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 382
    :goto_3
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v6, v2

    goto :goto_4

    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 383
    :goto_4
    invoke-virtual {v0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_5

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_5
    const-string v0, "file.encoding"

    .line 384
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->bundleEncoding:Ljava/lang/String;

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->bundle:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    invoke-direct {p0, v0, v2, v5}, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->processBundle(Ljava/lang/String;IZ)V

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->bundle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x5

    invoke-direct {p0, v0, v2, v5}, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->processBundle(Ljava/lang/String;IZ)V

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->bundle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-direct {p0, v0, v1, v4}, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->processBundle(Ljava/lang/String;IZ)V

    return-void
.end method

.method private processBundle(Ljava/lang/String;IZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-string v0, "Using "

    .line 396
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ".properties"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/apache/tools/ant/Project;->resolveFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const/4 v1, 0x4

    .line 399
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/nio/file/OpenOption;

    invoke-static {v2, v3}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v2

    const/4 v3, 0x1

    .line 400
    iput-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->loaded:Z

    .line 401
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->bundleLastModified:[J

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    aput-wide v4, v3, p2

    .line 402
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, v1}, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->log(Ljava/lang/String;I)V

    .line 403
    invoke-direct {p0, v2}, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->loadResourceMap(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " not found."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->log(Ljava/lang/String;I)V

    .line 409
    iget-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->loaded:Z

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 410
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private translate()V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 479
    iget-object v0, v1, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->filesets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x4

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/tools/ant/types/FileSet;

    .line 480
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/tools/ant/types/FileSet;->getDirectoryScanner(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v4

    .line 481
    invoke-virtual {v4}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v8, v0

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v7, :cond_7

    aget-object v10, v6, v9

    .line 483
    :try_start_0
    sget-object v0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    iget-object v11, v1, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->toDir:Ljava/io/File;

    invoke-virtual {v0, v11, v10}, Lorg/apache/tools/ant/util/FileUtils;->resolveFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v11
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 486
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 487
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_0

    .line 488
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move-exception v0

    .line 491
    :try_start_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception occurred while trying to check/create  parent directory.  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 492
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 491
    invoke-virtual {v1, v0, v5}, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->log(Ljava/lang/String;I)V

    .line 495
    :cond_0
    :goto_2
    invoke-virtual {v11}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    iput-wide v12, v1, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->destLastModified:J

    .line 496
    sget-object v0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v4}, Lorg/apache/tools/ant/DirectoryScanner;->getBasedir()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v0, v12, v10}, Lorg/apache/tools/ant/util/FileUtils;->resolveFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 497
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    iput-wide v12, v1, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->srcLastModified:J

    .line 499
    iget-boolean v14, v1, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->forceOverwrite:Z

    const/4 v15, 0x1

    if-nez v14, :cond_2

    move-object/from16 v16, v4

    iget-wide v3, v1, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->destLastModified:J

    cmp-long v3, v3, v12

    if-gez v3, :cond_1

    goto :goto_3

    :cond_1
    const/4 v3, 0x0

    goto :goto_4

    :cond_2
    move-object/from16 v16, v4

    :goto_3
    move v3, v15

    :goto_4
    if-nez v3, :cond_5

    const/4 v4, 0x0

    :goto_5
    const/4 v12, 0x7

    if-ge v4, v12, :cond_5

    .line 503
    iget-wide v12, v1, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->destLastModified:J

    iget-object v3, v1, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->bundleLastModified:[J

    aget-wide v17, v3, v4

    cmp-long v3, v12, v17

    if-gez v3, :cond_3

    move v3, v15

    goto :goto_6

    :cond_3
    const/4 v3, 0x0

    :goto_6
    if-eqz v3, :cond_4

    goto :goto_7

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_5
    :goto_7
    if-eqz v3, :cond_6

    .line 510
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Processing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v5}, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->log(Ljava/lang/String;I)V

    .line 511
    invoke-direct {v1, v0, v11}, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->translateOneFile(Ljava/io/File;Ljava/io/File;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 514
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " as destination file is up to date"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x3

    invoke-virtual {v1, v0, v3}, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->log(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_8
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v4, v16

    goto/16 :goto_1

    :catch_1
    move-exception v0

    .line 518
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v2

    :cond_7
    move v0, v8

    goto/16 :goto_0

    .line 522
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Translation performed on "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " file(s)."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v5}, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->log(Ljava/lang/String;I)V

    return-void
.end method

.method private translateOneFile(Ljava/io/File;Ljava/io/File;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 526
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    .line 527
    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p2

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/nio/file/OpenOption;

    invoke-static {p2, v3}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object p2

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->destEncoding:Ljava/lang/String;

    invoke-direct {v1, p2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 528
    :try_start_0
    new-instance p2, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    .line 529
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    new-array v3, v2, [Ljava/nio/file/OpenOption;

    invoke-static {p1, v3}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p1

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->srcEncoding:Ljava/lang/String;

    invoke-direct {v1, p1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 530
    :try_start_1
    new-instance p1, Lorg/apache/tools/ant/util/LineTokenizer;

    invoke-direct {p1}, Lorg/apache/tools/ant/util/LineTokenizer;-><init>()V

    const/4 v1, 0x1

    .line 531
    invoke-virtual {p1, v1}, Lorg/apache/tools/ant/util/LineTokenizer;->setIncludeDelims(Z)V

    .line 532
    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/util/LineTokenizer;->getToken(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_7

    .line 539
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->startToken:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    :goto_1
    if-ltz v4, :cond_6

    .line 540
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->startToken:Ljava/lang/String;

    .line 541
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-gt v5, v6, :cond_6

    .line 550
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->endToken:Ljava/lang/String;

    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->startToken:Ljava/lang/String;

    .line 551
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v4

    .line 550
    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    if-gez v5, :cond_0

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_5

    .line 556
    :cond_0
    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->startToken:Ljava/lang/String;

    .line 557
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v4

    .line 556
    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    move v8, v1

    move v7, v2

    .line 563
    :goto_3
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v7, v9, :cond_3

    if-eqz v8, :cond_3

    .line 564
    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x3a

    if-eq v9, v10, :cond_1

    const/16 v10, 0x3d

    if-eq v9, v10, :cond_1

    .line 566
    invoke-static {v9}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_1
    move v8, v2

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_3
    if-nez v8, :cond_4

    goto :goto_2

    .line 574
    :cond_4
    iget-object v7, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->resourceMap:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 575
    iget-object v7, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->resourceMap:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_4

    .line 577
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Replacement string missing for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    invoke-virtual {p0, v7, v8}, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->log(Ljava/lang/String;I)V

    .line 579
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->startToken:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->endToken:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 584
    :goto_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->endToken:Ljava/lang/String;

    .line 585
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v5, v8

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 588
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    .line 593
    :goto_5
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->startToken:Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    goto/16 :goto_1

    .line 595
    :cond_6
    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 596
    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/util/LineTokenizer;->getToken(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 598
    :cond_7
    :try_start_2
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    return-void

    :catchall_0
    move-exception p1

    .line 526
    :try_start_3
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw p1
.end method


# virtual methods
.method public addFileset(Lorg/apache/tools/ant/types/FileSet;)V
    .locals 1

    .line 273
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->filesets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public execute()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 287
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->bundle:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 292
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->startToken:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 297
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->endToken:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 302
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->bundleLanguage:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 303
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 304
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->bundleLanguage:Ljava/lang/String;

    .line 307
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->bundleCountry:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 308
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->bundleCountry:Ljava/lang/String;

    .line 311
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->bundleVariant:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 312
    new-instance v0, Ljava/util/Locale;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->bundleLanguage:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->bundleCountry:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    invoke-virtual {v0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->bundleVariant:Ljava/lang/String;

    .line 316
    :cond_2
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->toDir:Ljava/io/File;

    if-eqz v0, :cond_8

    .line 321
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 322
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->toDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    .line 323
    :cond_3
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->toDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_7

    .line 327
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->srcEncoding:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string v0, "file.encoding"

    .line 328
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->srcEncoding:Ljava/lang/String;

    .line 331
    :cond_4
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->destEncoding:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 332
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->srcEncoding:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->destEncoding:Ljava/lang/String;

    .line 335
    :cond_5
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->bundleEncoding:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 336
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->srcEncoding:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->bundleEncoding:Ljava/lang/String;

    .line 339
    :cond_6
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->loadResourceMaps()V

    .line 341
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->translate()V

    return-void

    .line 324
    :cond_7
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->toDir:Ljava/io/File;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s is not a directory"

    invoke-direct {v0, v2, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 317
    :cond_8
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "The todir attribute must be set."

    .line 318
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 298
    :cond_9
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "The endtoken attribute must be set."

    .line 299
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 293
    :cond_a
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "The starttoken attribute must be set."

    .line 294
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 288
    :cond_b
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "The bundle attribute must be set."

    .line 289
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method public setBundle(Ljava/lang/String;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->bundle:Ljava/lang/String;

    return-void
.end method

.method public setBundleCountry(Ljava/lang/String;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->bundleCountry:Ljava/lang/String;

    return-void
.end method

.method public setBundleEncoding(Ljava/lang/String;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->bundleEncoding:Ljava/lang/String;

    return-void
.end method

.method public setBundleLanguage(Ljava/lang/String;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->bundleLanguage:Ljava/lang/String;

    return-void
.end method

.method public setBundleVariant(Ljava/lang/String;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->bundleVariant:Ljava/lang/String;

    return-void
.end method

.method public setDestEncoding(Ljava/lang/String;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->destEncoding:Ljava/lang/String;

    return-void
.end method

.method public setEndToken(Ljava/lang/String;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->endToken:Ljava/lang/String;

    return-void
.end method

.method public setForceOverwrite(Z)V
    .locals 0

    .line 265
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->forceOverwrite:Z

    return-void
.end method

.method public setSrcEncoding(Ljava/lang/String;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->srcEncoding:Ljava/lang/String;

    return-void
.end method

.method public setStartToken(Ljava/lang/String;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->startToken:Ljava/lang/String;

    return-void
.end method

.method public setToDir(Ljava/io/File;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/i18n/Translate;->toDir:Ljava/io/File;

    return-void
.end method
