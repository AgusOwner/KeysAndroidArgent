.class public Lorg/apache/tools/ant/taskdefs/SignJar;
.super Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;
.source "SignJar.java"


# static fields
.field public static final ERROR_BAD_MAP:Ljava/lang/String; = "Cannot map source file to anything sensible: "

.field public static final ERROR_MAPPER_WITHOUT_DEST:Ljava/lang/String; = "The destDir attribute is required if a mapper is set"

.field public static final ERROR_NO_ALIAS:Ljava/lang/String; = "alias attribute must be set"

.field public static final ERROR_NO_STOREPASS:Ljava/lang/String; = "storepass attribute must be set"

.field public static final ERROR_SIGNEDJAR_AND_PATHS:Ljava/lang/String; = "You cannot specify the signed JAR when using paths or filesets"

.field public static final ERROR_TODIR_AND_SIGNEDJAR:Ljava/lang/String; = "\'destdir\' and \'signedjar\' cannot both be set"

.field public static final ERROR_TOO_MANY_MAPPERS:Ljava/lang/String; = "Too many mappers"

.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;


# instance fields
.field protected destDir:Ljava/io/File;

.field private digestAlg:Ljava/lang/String;

.field private force:Z

.field protected internalsf:Z

.field protected lazy:Z

.field private mapper:Lorg/apache/tools/ant/util/FileNameMapper;

.field private preserveLastModified:Z

.field protected sectionsonly:Z

.field private sigAlg:Ljava/lang/String;

.field protected sigfile:Ljava/lang/String;

.field protected signedjar:Ljava/io/File;

.field private tsaDigestAlg:Ljava/lang/String;

.field protected tsacert:Ljava/lang/String;

.field protected tsaproxyhost:Ljava/lang/String;

.field protected tsaproxyport:Ljava/lang/String;

.field protected tsaurl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/SignJar;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/AbstractJarSignerTask;-><init>()V

    const/4 v0, 0x0

    .line 150
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->force:Z

    return-void
.end method

.method private addProxyFor(Lorg/apache/tools/ant/taskdefs/ExecTask;Ljava/lang/String;)V
    .locals 3

    .line 668
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-J-D"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".proxyHost="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->tsaproxyhost:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/SignJar;->addValue(Lorg/apache/tools/ant/taskdefs/ExecTask;Ljava/lang/String;)V

    .line 670
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->tsaproxyport:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ".proxyPort="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->tsaproxyport:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/SignJar;->addValue(Lorg/apache/tools/ant/taskdefs/ExecTask;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private addTimestampAuthorityCommands(Lorg/apache/tools/ant/taskdefs/ExecTask;)V
    .locals 2

    .line 573
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->tsaurl:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "-tsa"

    .line 574
    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/SignJar;->addValue(Lorg/apache/tools/ant/taskdefs/ExecTask;Ljava/lang/String;)V

    .line 575
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->tsaurl:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/SignJar;->addValue(Lorg/apache/tools/ant/taskdefs/ExecTask;Ljava/lang/String;)V

    .line 578
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->tsacert:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "-tsacert"

    .line 579
    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/SignJar;->addValue(Lorg/apache/tools/ant/taskdefs/ExecTask;Ljava/lang/String;)V

    .line 580
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->tsacert:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/SignJar;->addValue(Lorg/apache/tools/ant/taskdefs/ExecTask;Ljava/lang/String;)V

    .line 583
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->tsaproxyhost:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 584
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->tsaurl:Ljava/lang/String;

    const-string v1, "https"

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 585
    :cond_2
    invoke-direct {p0, p1, v1}, Lorg/apache/tools/ant/taskdefs/SignJar;->addProxyFor(Lorg/apache/tools/ant/taskdefs/ExecTask;Ljava/lang/String;)V

    .line 587
    :cond_3
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->tsaurl:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    const-string v0, "http"

    .line 588
    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/SignJar;->addProxyFor(Lorg/apache/tools/ant/taskdefs/ExecTask;Ljava/lang/String;)V

    .line 592
    :cond_5
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->tsaDigestAlg:Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string v0, "-tsadigestalg"

    .line 593
    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/SignJar;->addValue(Lorg/apache/tools/ant/taskdefs/ExecTask;Ljava/lang/String;)V

    .line 594
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->tsaDigestAlg:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/SignJar;->addValue(Lorg/apache/tools/ant/taskdefs/ExecTask;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method private signOneJar(Ljava/io/File;Ljava/io/File;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    if-nez p2, :cond_0

    move-object p2, p1

    .line 498
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/SignJar;->isUpToDate(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 502
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 503
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SignJar;->createJarSigner()Lorg/apache/tools/ant/taskdefs/ExecTask;

    move-result-object v2

    .line 505
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/taskdefs/SignJar;->setCommonOptions(Lorg/apache/tools/ant/taskdefs/ExecTask;)V

    .line 507
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/taskdefs/SignJar;->bindToKeystore(Lorg/apache/tools/ant/taskdefs/ExecTask;)V

    .line 508
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->sigfile:Ljava/lang/String;

    if-eqz v3, :cond_2

    const-string v3, "-sigfile"

    .line 509
    invoke-virtual {p0, v2, v3}, Lorg/apache/tools/ant/taskdefs/SignJar;->addValue(Lorg/apache/tools/ant/taskdefs/ExecTask;Ljava/lang/String;)V

    .line 510
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->sigfile:Ljava/lang/String;

    .line 511
    invoke-virtual {p0, v2, v3}, Lorg/apache/tools/ant/taskdefs/SignJar;->addValue(Lorg/apache/tools/ant/taskdefs/ExecTask;Ljava/lang/String;)V

    .line 517
    :cond_2
    :try_start_0
    sget-object v3, Lorg/apache/tools/ant/taskdefs/SignJar;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v3, p1, p2}, Lorg/apache/tools/ant/util/FileUtils;->areSame(Ljava/io/File;Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "-signedjar"

    .line 518
    invoke-virtual {p0, v2, v4}, Lorg/apache/tools/ant/taskdefs/SignJar;->addValue(Lorg/apache/tools/ant/taskdefs/ExecTask;Ljava/lang/String;)V

    .line 519
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lorg/apache/tools/ant/taskdefs/SignJar;->addValue(Lorg/apache/tools/ant/taskdefs/ExecTask;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    :cond_3
    iget-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->internalsf:Z

    if-eqz v4, :cond_4

    const-string v4, "-internalsf"

    .line 526
    invoke-virtual {p0, v2, v4}, Lorg/apache/tools/ant/taskdefs/SignJar;->addValue(Lorg/apache/tools/ant/taskdefs/ExecTask;Ljava/lang/String;)V

    .line 529
    :cond_4
    iget-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->sectionsonly:Z

    if-eqz v4, :cond_5

    const-string v4, "-sectionsonly"

    .line 530
    invoke-virtual {p0, v2, v4}, Lorg/apache/tools/ant/taskdefs/SignJar;->addValue(Lorg/apache/tools/ant/taskdefs/ExecTask;Ljava/lang/String;)V

    .line 533
    :cond_5
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->sigAlg:Ljava/lang/String;

    if-eqz v4, :cond_6

    const-string v4, "-sigalg"

    .line 534
    invoke-virtual {p0, v2, v4}, Lorg/apache/tools/ant/taskdefs/SignJar;->addValue(Lorg/apache/tools/ant/taskdefs/ExecTask;Ljava/lang/String;)V

    .line 535
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->sigAlg:Ljava/lang/String;

    invoke-virtual {p0, v2, v4}, Lorg/apache/tools/ant/taskdefs/SignJar;->addValue(Lorg/apache/tools/ant/taskdefs/ExecTask;Ljava/lang/String;)V

    .line 538
    :cond_6
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->digestAlg:Ljava/lang/String;

    if-eqz v4, :cond_7

    const-string v4, "-digestalg"

    .line 539
    invoke-virtual {p0, v2, v4}, Lorg/apache/tools/ant/taskdefs/SignJar;->addValue(Lorg/apache/tools/ant/taskdefs/ExecTask;Ljava/lang/String;)V

    .line 540
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->digestAlg:Ljava/lang/String;

    invoke-virtual {p0, v2, v4}, Lorg/apache/tools/ant/taskdefs/SignJar;->addValue(Lorg/apache/tools/ant/taskdefs/ExecTask;Ljava/lang/String;)V

    .line 544
    :cond_7
    invoke-direct {p0, v2}, Lorg/apache/tools/ant/taskdefs/SignJar;->addTimestampAuthorityCommands(Lorg/apache/tools/ant/taskdefs/ExecTask;)V

    .line 547
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lorg/apache/tools/ant/taskdefs/SignJar;->addValue(Lorg/apache/tools/ant/taskdefs/ExecTask;Ljava/lang/String;)V

    .line 550
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->alias:Ljava/lang/String;

    invoke-virtual {p0, v2, v4}, Lorg/apache/tools/ant/taskdefs/SignJar;->addValue(Lorg/apache/tools/ant/taskdefs/ExecTask;Ljava/lang/String;)V

    .line 552
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Signing JAR: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 553
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, " to "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 555
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, " as "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->alias:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 552
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/SignJar;->log(Ljava/lang/String;)V

    .line 558
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/ExecTask;->execute()V

    .line 561
    iget-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->preserveLastModified:Z

    if-eqz p1, :cond_8

    .line 562
    invoke-virtual {v3, p2, v0, v1}, Lorg/apache/tools/ant/util/FileUtils;->setFileLastModified(Ljava/io/File;J)V

    :cond_8
    return-void

    :catch_0
    move-exception p1

    .line 522
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    invoke-direct {p2, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/util/FileNameMapper;)V
    .locals 1

    .line 235
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->mapper:Lorg/apache/tools/ant/util/FileNameMapper;

    if-nez v0, :cond_0

    .line 238
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->mapper:Lorg/apache/tools/ant/util/FileNameMapper;

    return-void

    .line 236
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "Too many mappers"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public execute()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 404
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->jar:Ljava/io/File;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 405
    :goto_0
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->signedjar:Ljava/io/File;

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 406
    :goto_1
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->destDir:Ljava/io/File;

    if-eqz v4, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v2

    .line 407
    :goto_2
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->mapper:Lorg/apache/tools/ant/util/FileNameMapper;

    if-eqz v5, :cond_3

    move v5, v1

    goto :goto_3

    :cond_3
    move v5, v2

    :goto_3
    if-nez v0, :cond_5

    .line 409
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SignJar;->hasResources()Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_4

    .line 410
    :cond_4
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "jar must be set through jar attribute or nested filesets"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    :cond_5
    :goto_4
    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->alias:Ljava/lang/String;

    if-eqz v6, :cond_12

    .line 416
    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->storepass:Ljava/lang/String;

    if-eqz v6, :cond_11

    if-eqz v4, :cond_7

    if-nez v3, :cond_6

    goto :goto_5

    .line 421
    :cond_6
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "\'destdir\' and \'signedjar\' cannot both be set"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 425
    :cond_7
    :goto_5
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SignJar;->hasResources()Z

    move-result v6

    if-eqz v6, :cond_9

    if-nez v3, :cond_8

    goto :goto_6

    .line 426
    :cond_8
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "You cannot specify the signed JAR when using paths or filesets"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    :goto_6
    if-nez v4, :cond_b

    if-nez v5, :cond_a

    goto :goto_7

    .line 432
    :cond_a
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "The destDir attribute is required if a mapper is set"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 435
    :cond_b
    :goto_7
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SignJar;->beginExecution()V

    if-eqz v0, :cond_c

    if-eqz v3, :cond_c

    .line 442
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->jar:Ljava/io/File;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->signedjar:Ljava/io/File;

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/SignJar;->signOneJar(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SignJar;->endExecution()V

    return-void

    .line 450
    :cond_c
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SignJar;->createUnifiedSourcePath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    if-eqz v5, :cond_d

    .line 452
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->mapper:Lorg/apache/tools/ant/util/FileNameMapper;

    goto :goto_8

    :cond_d
    new-instance v3, Lorg/apache/tools/ant/util/IdentityMapper;

    invoke-direct {v3}, Lorg/apache/tools/ant/util/IdentityMapper;-><init>()V

    .line 458
    :goto_8
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/tools/ant/types/Resource;

    .line 459
    const-class v6, Lorg/apache/tools/ant/types/resources/FileProvider;

    .line 460
    invoke-virtual {v5, v6}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-static {v5}, Lorg/apache/tools/ant/util/ResourceUtils;->asFileResource(Lorg/apache/tools/ant/types/resources/FileProvider;)Lorg/apache/tools/ant/types/resources/FileResource;

    move-result-object v5

    if-eqz v4, :cond_e

    .line 464
    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->destDir:Ljava/io/File;

    goto :goto_a

    :cond_e
    invoke-virtual {v5}, Lorg/apache/tools/ant/types/resources/FileResource;->getBaseDir()Ljava/io/File;

    move-result-object v6

    .line 467
    :goto_a
    invoke-virtual {v5}, Lorg/apache/tools/ant/types/resources/FileResource;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Lorg/apache/tools/ant/util/FileNameMapper;->mapFileName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_f

    .line 468
    array-length v8, v7

    if-ne v8, v1, :cond_f

    .line 472
    new-instance v8, Ljava/io/File;

    aget-object v7, v7, v2

    invoke-direct {v8, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 473
    invoke-virtual {v5}, Lorg/apache/tools/ant/types/resources/FileResource;->getFile()Ljava/io/File;

    move-result-object v5

    invoke-direct {p0, v5, v8}, Lorg/apache/tools/ant/taskdefs/SignJar;->signOneJar(Ljava/io/File;Ljava/io/File;)V

    goto :goto_9

    .line 470
    :cond_f
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot map source file to anything sensible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Lorg/apache/tools/ant/types/resources/FileResource;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 476
    :cond_10
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SignJar;->endExecution()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SignJar;->endExecution()V

    .line 477
    throw v0

    .line 417
    :cond_11
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "storepass attribute must be set"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :cond_12
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "alias attribute must be set"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDigestAlg()Ljava/lang/String;
    .locals 1

    .line 373
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->digestAlg:Ljava/lang/String;

    return-object v0
.end method

.method public getMapper()Lorg/apache/tools/ant/util/FileNameMapper;
    .locals 1

    .line 247
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->mapper:Lorg/apache/tools/ant/util/FileNameMapper;

    return-object v0
.end method

.method public getSigAlg()Ljava/lang/String;
    .locals 1

    .line 355
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->sigAlg:Ljava/lang/String;

    return-object v0
.end method

.method public getTSADigestAlg()Ljava/lang/String;
    .locals 1

    .line 393
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->tsaDigestAlg:Ljava/lang/String;

    return-object v0
.end method

.method public getTsacert()Ljava/lang/String;
    .locals 1

    .line 310
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->tsacert:Ljava/lang/String;

    return-object v0
.end method

.method public getTsaproxyhost()Ljava/lang/String;
    .locals 1

    .line 274
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->tsaproxyhost:Ljava/lang/String;

    return-object v0
.end method

.method public getTsaproxyport()Ljava/lang/String;
    .locals 1

    .line 292
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->tsaproxyport:Ljava/lang/String;

    return-object v0
.end method

.method public getTsaurl()Ljava/lang/String;
    .locals 1

    .line 256
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->tsaurl:Ljava/lang/String;

    return-object v0
.end method

.method public isForce()Z
    .locals 1

    .line 337
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->force:Z

    return v0
.end method

.method protected isSigned(Ljava/io/File;)Z
    .locals 1

    .line 649
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->sigfile:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->alias:Ljava/lang/String;

    :cond_0
    invoke-static {p1, v0}, Lorg/apache/tools/ant/taskdefs/condition/IsSigned;->isSigned(Ljava/io/File;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 652
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/SignJar;->log(Ljava/lang/String;I)V

    const/4 p1, 0x0

    return p1
.end method

.method protected isUpToDate(Ljava/io/File;Ljava/io/File;)Z
    .locals 2

    .line 612
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/SignJar;->isForce()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    move-object p2, p1

    .line 626
    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 627
    iget-boolean p2, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->lazy:Z

    if-eqz p2, :cond_2

    .line 629
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/SignJar;->isSigned(Ljava/io/File;)Z

    move-result p1

    return p1

    :cond_2
    return v1

    .line 636
    :cond_3
    sget-object v0, Lorg/apache/tools/ant/taskdefs/SignJar;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/util/FileUtils;->isUpToDate(Ljava/io/File;Ljava/io/File;)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v1
.end method

.method public setDestDir(Ljava/io/File;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->destDir:Ljava/io/File;

    return-void
.end method

.method public setDigestAlg(Ljava/lang/String;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->digestAlg:Ljava/lang/String;

    return-void
.end method

.method public setForce(Z)V
    .locals 0

    .line 327
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->force:Z

    return-void
.end method

.method public setInternalsf(Z)V
    .locals 0

    .line 194
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->internalsf:Z

    return-void
.end method

.method public setLazy(Z)V
    .locals 0

    .line 213
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->lazy:Z

    return-void
.end method

.method public setPreserveLastModified(Z)V
    .locals 0

    .line 664
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->preserveLastModified:Z

    return-void
.end method

.method public setSectionsonly(Z)V
    .locals 0

    .line 203
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->sectionsonly:Z

    return-void
.end method

.method public setSigAlg(Ljava/lang/String;)V
    .locals 0

    .line 346
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->sigAlg:Ljava/lang/String;

    return-void
.end method

.method public setSigfile(Ljava/lang/String;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->sigfile:Ljava/lang/String;

    return-void
.end method

.method public setSignedjar(Ljava/io/File;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->signedjar:Ljava/io/File;

    return-void
.end method

.method public setTSADigestAlg(Ljava/lang/String;)V
    .locals 0

    .line 383
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->tsaDigestAlg:Ljava/lang/String;

    return-void
.end method

.method public setTsacert(Ljava/lang/String;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->tsacert:Ljava/lang/String;

    return-void
.end method

.method public setTsaproxyhost(Ljava/lang/String;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->tsaproxyhost:Ljava/lang/String;

    return-void
.end method

.method public setTsaproxyport(Ljava/lang/String;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->tsaproxyport:Ljava/lang/String;

    return-void
.end method

.method public setTsaurl(Ljava/lang/String;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/SignJar;->tsaurl:Ljava/lang/String;

    return-void
.end method
