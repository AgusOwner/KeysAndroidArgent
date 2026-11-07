.class public Lorg/apache/tools/ant/taskdefs/Jar;
.super Lorg/apache/tools/ant/taskdefs/Zip;
.source "Jar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/Jar$StrictMode;,
        Lorg/apache/tools/ant/taskdefs/Jar$FilesetManifestConfig;,
        Lorg/apache/tools/ant/taskdefs/Jar$IndexJarsFilenameMapper;
    }
.end annotation


# static fields
.field private static final INDEX_NAME:Ljava/lang/String; = "META-INF/INDEX.LIST"

.field private static final JAR_MARKER:[Lorg/apache/tools/zip/ZipExtraField;

.field private static final MANIFEST_NAME:Ljava/lang/String; = "META-INF/MANIFEST.MF"


# instance fields
.field private configuredManifest:Lorg/apache/tools/ant/taskdefs/Manifest;

.field private createEmpty:Z

.field private filesetManifest:Lorg/apache/tools/ant/taskdefs/Manifest;

.field private filesetManifestConfig:Lorg/apache/tools/ant/taskdefs/Jar$FilesetManifestConfig;

.field private flattenClassPaths:Z

.field private index:Z

.field private indexJars:Lorg/apache/tools/ant/types/Path;

.field private indexJarsMapper:Lorg/apache/tools/ant/util/FileNameMapper;

.field private indexMetaInf:Z

.field private manifest:Lorg/apache/tools/ant/taskdefs/Manifest;

.field private manifestEncoding:Ljava/lang/String;

.field private manifestFile:Ljava/io/File;

.field private mergeClassPaths:Z

.field private mergeManifestsMain:Z

.field private originalManifest:Lorg/apache/tools/ant/taskdefs/Manifest;

.field private rootEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private savedConfiguredManifest:Lorg/apache/tools/ant/taskdefs/Manifest;

.field private serviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/types/spi/Service;",
            ">;"
        }
    .end annotation
.end field

.field private strict:Lorg/apache/tools/ant/taskdefs/Jar$StrictMode;


# direct methods
.method public static synthetic $r8$lambda$vN7Wu77WNgkSv-pxg-AAu7TIWhc(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/tools/zip/ZipExtraField;

    const/4 v1, 0x0

    .line 189
    invoke-static {}, Lorg/apache/tools/zip/JarMarker;->getInstance()Lorg/apache/tools/zip/JarMarker;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Jar;->JAR_MARKER:[Lorg/apache/tools/zip/ZipExtraField;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 194
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Zip;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->serviceList:Ljava/util/List;

    const/4 v0, 0x1

    .line 110
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->mergeManifestsMain:Z

    const/4 v0, 0x0

    .line 127
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->index:Z

    .line 130
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->indexMetaInf:Z

    .line 136
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->createEmpty:Z

    const/4 v1, 0x0

    .line 161
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->indexJarsMapper:Lorg/apache/tools/ant/util/FileNameMapper;

    .line 169
    new-instance v1, Lorg/apache/tools/ant/taskdefs/Jar$StrictMode;

    const-string v2, "ignore"

    invoke-direct {v1, v2}, Lorg/apache/tools/ant/taskdefs/Jar$StrictMode;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->strict:Lorg/apache/tools/ant/taskdefs/Jar$StrictMode;

    .line 176
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->mergeClassPaths:Z

    .line 181
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->flattenClassPaths:Z

    const-string v0, "jar"

    .line 195
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->archiveType:Ljava/lang/String;

    const-string v0, "create"

    .line 196
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->emptyBehavior:Ljava/lang/String;

    const-string v0, "UTF8"

    .line 197
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Jar;->setEncoding(Ljava/lang/String;)V

    .line 198
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Zip$Zip64ModeAttribute;->NEVER:Lorg/apache/tools/ant/taskdefs/Zip$Zip64ModeAttribute;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Jar;->setZip64Mode(Lorg/apache/tools/ant/taskdefs/Zip$Zip64ModeAttribute;)V

    .line 199
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->rootEntries:Ljava/util/List;

    return-void
.end method

.method private checkJarSpec()V
    .locals 3

    .line 950
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 951
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->configuredManifest:Lorg/apache/tools/ant/taskdefs/Manifest;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 953
    :cond_0
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Manifest;->getMainSection()Lorg/apache/tools/ant/taskdefs/Manifest$Section;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    const-string v1, "No Implementation-Title set.No Implementation-Version set.No Implementation-Vendor set."

    .line 956
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v2, "Implementation-Title"

    .line 960
    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->getAttribute(Ljava/lang/String;)Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v2, "No Implementation-Title set."

    .line 961
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v2, "Implementation-Version"

    .line 963
    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->getAttribute(Ljava/lang/String;)Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v2, "No Implementation-Version set."

    .line 964
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v2, "Implementation-Vendor"

    .line 966
    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->getAttribute(Ljava/lang/String;)Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;

    move-result-object v1

    if-nez v1, :cond_4

    const-string v1, "No Implementation-Vendor set."

    .line 967
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 971
    :cond_4
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 972
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Jar;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%nLocation: %s%n"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 973
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->strict:Lorg/apache/tools/ant/taskdefs/Jar$StrictMode;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Jar$StrictMode;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fail"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 976
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->strict:Lorg/apache/tools/ant/taskdefs/Jar$StrictMode;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Jar$StrictMode;->getLogLevel()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Jar;->logWhenWriting(Ljava/lang/String;I)V

    goto :goto_2

    .line 974
    :cond_5
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Jar;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1

    :cond_6
    :goto_2
    return-void
.end method

.method private createDefaultIndexJarsMapper()Lorg/apache/tools/ant/util/FileNameMapper;
    .locals 5

    .line 672
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Jar;->createManifest()Lorg/apache/tools/ant/taskdefs/Manifest;

    move-result-object v0

    .line 674
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Manifest;->getMainSection()Lorg/apache/tools/ant/taskdefs/Manifest$Section;

    move-result-object v0

    const-string v1, "Class-Path"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->getAttribute(Ljava/lang/String;)Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 676
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 677
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v2, " "

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 681
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v3, v2, 0x1

    .line 682
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 686
    :cond_1
    new-instance v1, Lorg/apache/tools/ant/taskdefs/Jar$IndexJarsFilenameMapper;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/taskdefs/Jar$IndexJarsFilenameMapper;-><init>([Ljava/lang/String;)V

    return-object v1
.end method

.method private createIndexList(Lorg/apache/tools/zip/ZipOutputStream;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 618
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 620
    new-instance v1, Ljava/io/PrintWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v2, "JarIndex-Version: 1.0"

    .line 623
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 624
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 627
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Jar;->zipFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 629
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Jar;->addedDirs:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Jar;->rootEntries:Ljava/util/List;

    invoke-virtual {p0, v2, v3, v1}, Lorg/apache/tools/ant/taskdefs/Jar;->writeIndexLikeList(Ljava/util/List;Ljava/util/List;Ljava/io/PrintWriter;)V

    .line 631
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 633
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Jar;->indexJars:Lorg/apache/tools/ant/types/Path;

    if-eqz v2, :cond_2

    .line 634
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Jar;->indexJarsMapper:Lorg/apache/tools/ant/util/FileNameMapper;

    if-nez v2, :cond_0

    .line 636
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Jar;->createDefaultIndexJarsMapper()Lorg/apache/tools/ant/util/FileNameMapper;

    move-result-object v2

    .line 638
    :cond_0
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Jar;->indexJars:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Path;->list()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_2

    aget-object v7, v3, v6

    .line 639
    invoke-interface {v2, v7}, Lorg/apache/tools/ant/util/FileNameMapper;->mapFileName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 640
    array-length v9, v8

    if-lez v9, :cond_1

    .line 641
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 642
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 643
    invoke-static {v7, v9, v10}, Lorg/apache/tools/ant/taskdefs/Jar;->grabFilesAndDirs(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 644
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/2addr v7, v11

    if-lez v7, :cond_1

    .line 645
    aget-object v7, v8, v5

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 646
    invoke-virtual {p0, v9, v10, v1}, Lorg/apache/tools/ant/taskdefs/Jar;->writeIndexLikeList(Ljava/util/List;Ljava/util/List;Ljava/io/PrintWriter;)V

    .line 647
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 653
    :cond_2
    invoke-virtual {v1}, Ljava/io/PrintWriter;->checkError()Z

    move-result v2

    if-nez v2, :cond_3

    .line 656
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 657
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 658
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_0
    const-string v6, "META-INF/INDEX.LIST"

    .line 659
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const/4 v9, 0x0

    const v10, 0x81a4

    move-object v3, p0

    move-object v4, v1

    move-object v5, p1

    invoke-super/range {v3 .. v10}, Lorg/apache/tools/ant/taskdefs/Zip;->zipFile(Ljava/io/InputStream;Lorg/apache/tools/zip/ZipOutputStream;Ljava/lang/String;JLjava/io/File;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 661
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    .line 657
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1

    .line 654
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Encountered an error writing jar index"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private createManifest()Lorg/apache/tools/ant/taskdefs/Manifest;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 509
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->manifest:Lorg/apache/tools/ant/taskdefs/Manifest;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->manifestFile:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 512
    invoke-direct {p0, v1}, Lorg/apache/tools/ant/taskdefs/Jar;->getManifest(Ljava/io/File;)Lorg/apache/tools/ant/taskdefs/Manifest;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->manifest:Lorg/apache/tools/ant/taskdefs/Manifest;

    .line 520
    :cond_0
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->mergeManifestsMain:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->filesetManifest:Lorg/apache/tools/ant/taskdefs/Manifest;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->configuredManifest:Lorg/apache/tools/ant/taskdefs/Manifest;

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->manifest:Lorg/apache/tools/ant/taskdefs/Manifest;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    if-eqz v1, :cond_2

    .line 526
    new-instance v3, Lorg/apache/tools/ant/taskdefs/Manifest;

    invoke-direct {v3}, Lorg/apache/tools/ant/taskdefs/Manifest;-><init>()V

    .line 527
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Jar;->filesetManifest:Lorg/apache/tools/ant/taskdefs/Manifest;

    iget-boolean v5, p0, Lorg/apache/tools/ant/taskdefs/Jar;->mergeClassPaths:Z

    invoke-virtual {v3, v4, v0, v5}, Lorg/apache/tools/ant/taskdefs/Manifest;->merge(Lorg/apache/tools/ant/taskdefs/Manifest;ZZ)V

    .line 528
    invoke-static {}, Lorg/apache/tools/ant/taskdefs/Manifest;->getDefaultManifest()Lorg/apache/tools/ant/taskdefs/Manifest;

    move-result-object v4

    iget-boolean v5, p0, Lorg/apache/tools/ant/taskdefs/Jar;->mergeClassPaths:Z

    invoke-virtual {v3, v4, v2, v5}, Lorg/apache/tools/ant/taskdefs/Manifest;->merge(Lorg/apache/tools/ant/taskdefs/Manifest;ZZ)V

    goto :goto_1

    .line 531
    :cond_2
    invoke-static {}, Lorg/apache/tools/ant/taskdefs/Manifest;->getDefaultManifest()Lorg/apache/tools/ant/taskdefs/Manifest;

    move-result-object v3

    .line 542
    :goto_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Jar;->isInUpdateMode()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 543
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Jar;->originalManifest:Lorg/apache/tools/ant/taskdefs/Manifest;

    iget-boolean v5, p0, Lorg/apache/tools/ant/taskdefs/Jar;->mergeClassPaths:Z

    invoke-virtual {v3, v4, v0, v5}, Lorg/apache/tools/ant/taskdefs/Manifest;->merge(Lorg/apache/tools/ant/taskdefs/Manifest;ZZ)V

    :cond_3
    if-nez v1, :cond_4

    .line 546
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->filesetManifest:Lorg/apache/tools/ant/taskdefs/Manifest;

    iget-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/Jar;->mergeClassPaths:Z

    invoke-virtual {v3, v1, v0, v4}, Lorg/apache/tools/ant/taskdefs/Manifest;->merge(Lorg/apache/tools/ant/taskdefs/Manifest;ZZ)V

    .line 548
    :cond_4
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->configuredManifest:Lorg/apache/tools/ant/taskdefs/Manifest;

    iget-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/Jar;->mergeManifestsMain:Z

    if-nez v4, :cond_5

    move v4, v2

    goto :goto_2

    :cond_5
    move v4, v0

    :goto_2
    iget-boolean v5, p0, Lorg/apache/tools/ant/taskdefs/Jar;->mergeClassPaths:Z

    invoke-virtual {v3, v1, v4, v5}, Lorg/apache/tools/ant/taskdefs/Manifest;->merge(Lorg/apache/tools/ant/taskdefs/Manifest;ZZ)V

    .line 550
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->manifest:Lorg/apache/tools/ant/taskdefs/Manifest;

    iget-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/Jar;->mergeManifestsMain:Z

    if-nez v4, :cond_6

    goto :goto_3

    :cond_6
    move v2, v0

    :goto_3
    iget-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/Jar;->mergeClassPaths:Z

    invoke-virtual {v3, v1, v2, v4}, Lorg/apache/tools/ant/taskdefs/Manifest;->merge(Lorg/apache/tools/ant/taskdefs/Manifest;ZZ)V
    :try_end_0
    .catch Lorg/apache/tools/ant/taskdefs/ManifestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v1

    .line 556
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Manifest is invalid: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/ManifestException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lorg/apache/tools/ant/taskdefs/Jar;->log(Ljava/lang/String;I)V

    .line 557
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Invalid Manifest"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Jar;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method private filesetManifest(Ljava/io/File;Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 723
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->manifestFile:Ljava/io/File;

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 726
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Found manifest "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Jar;->log(Ljava/lang/String;I)V

    if-nez p2, :cond_0

    .line 728
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/Jar;->getManifest(Ljava/io/File;)Lorg/apache/tools/ant/taskdefs/Manifest;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->manifest:Lorg/apache/tools/ant/taskdefs/Manifest;

    goto/16 :goto_3

    .line 730
    :cond_0
    new-instance p1, Ljava/io/InputStreamReader;

    .line 731
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Jar;->getManifestCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 732
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/Jar;->getManifest(Ljava/io/Reader;)Lorg/apache/tools/ant/taskdefs/Manifest;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/Jar;->manifest:Lorg/apache/tools/ant/taskdefs/Manifest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 733
    invoke-virtual {p1}, Ljava/io/InputStreamReader;->close()V

    goto/16 :goto_3

    :catchall_0
    move-exception p2

    .line 730
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStreamReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p2

    .line 735
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->filesetManifestConfig:Lorg/apache/tools/ant/taskdefs/Jar$FilesetManifestConfig;

    if-eqz v0, :cond_4

    const-string v2, "skip"

    .line 736
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Jar$FilesetManifestConfig;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Found manifest to merge in file "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Jar;->logWhenWriting(Ljava/lang/String;I)V

    const/4 v0, 0x0

    if-nez p2, :cond_2

    .line 744
    :try_start_2
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/Jar;->getManifest(Ljava/io/File;)Lorg/apache/tools/ant/taskdefs/Manifest;

    move-result-object p2

    goto :goto_1

    .line 746
    :cond_2
    new-instance v1, Ljava/io/InputStreamReader;

    .line 747
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Jar;->getManifestCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/apache/tools/ant/taskdefs/ManifestException; {:try_start_2 .. :try_end_2} :catch_0

    .line 748
    :try_start_3
    invoke-direct {p0, v1}, Lorg/apache/tools/ant/taskdefs/Jar;->getManifest(Ljava/io/Reader;)Lorg/apache/tools/ant/taskdefs/Manifest;

    move-result-object p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 749
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    .line 752
    :goto_1
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->filesetManifest:Lorg/apache/tools/ant/taskdefs/Manifest;

    if-nez v1, :cond_3

    .line 753
    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/Jar;->filesetManifest:Lorg/apache/tools/ant/taskdefs/Manifest;

    goto :goto_3

    .line 755
    :cond_3
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Jar;->mergeClassPaths:Z

    invoke-virtual {v1, p2, v0, v2}, Lorg/apache/tools/ant/taskdefs/Manifest;->merge(Lorg/apache/tools/ant/taskdefs/Manifest;ZZ)V
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/apache/tools/ant/taskdefs/ManifestException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :catchall_2
    move-exception p2

    .line 746
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v1

    :try_start_6
    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p2
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/apache/tools/ant/taskdefs/ManifestException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception p2

    .line 761
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Manifest in file "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is invalid: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 762
    invoke-virtual {p2}, Lorg/apache/tools/ant/taskdefs/ManifestException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 761
    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/Jar;->log(Ljava/lang/String;I)V

    .line 763
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "Invalid Manifest"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Jar;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-direct {p1, v0, p2, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw p1

    :catch_1
    move-exception p1

    .line 758
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported encoding while reading manifest: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 759
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_4
    :goto_3
    return-void
.end method

.method protected static findJarName(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    if-nez p1, :cond_0

    .line 1080
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1082
    :cond_0
    sget-char v0, Ljava/io/File;->separatorChar:C

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 1083
    new-instance v0, Ljava/util/TreeMap;

    new-instance v2, Lorg/apache/tools/ant/taskdefs/Jar$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lorg/apache/tools/ant/taskdefs/Jar$$ExternalSyntheticLambda4;-><init>()V

    .line 1084
    invoke-static {v2}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 1086
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, p1, v3

    move-object v5, v4

    .line 1089
    :goto_1
    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1090
    invoke-interface {v0, v5, v4}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1093
    :cond_1
    invoke-virtual {v5, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gez v6, :cond_2

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 1097
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 1100
    :cond_3
    invoke-interface {v0}, Ljava/util/SortedMap;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x0

    goto :goto_3

    :cond_4
    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :goto_3
    return-object p0
.end method

.method private getManifest(Ljava/io/File;)Lorg/apache/tools/ant/taskdefs/Manifest;
    .locals 4

    .line 320
    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    .line 321
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/OpenOption;

    invoke-static {v1, v2}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Jar;->getManifestCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    :try_start_1
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Jar;->getManifest(Ljava/io/Reader;)Lorg/apache/tools/ant/taskdefs/Manifest;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 323
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    :catchall_0
    move-exception v1

    .line 320
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 324
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to read manifest file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " ("

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 325
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ")"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getManifest(Ljava/io/Reader;)Lorg/apache/tools/ant/taskdefs/Manifest;
    .locals 3

    .line 353
    :try_start_0
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Manifest;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/taskdefs/Manifest;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Lorg/apache/tools/ant/taskdefs/ManifestException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 359
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to read manifest file ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Manifest is invalid: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/ManifestException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Jar;->log(Ljava/lang/String;I)V

    .line 356
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid Manifest: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Jar;->manifestFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 357
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Jar;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method private getManifestCharset()Ljava/nio/charset/Charset;
    .locals 4

    .line 1172
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->manifestEncoding:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1173
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0

    .line 1176
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1178
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported encoding while reading manifest: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1180
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getManifestFromJar(Ljava/io/File;)Lorg/apache/tools/ant/taskdefs/Manifest;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 335
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 338
    :try_start_0
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/tools/ant/util/StreamUtils;->enumerationAsStream(Ljava/util/Enumeration;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lorg/apache/tools/ant/taskdefs/Jar$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/Jar$$ExternalSyntheticLambda3;-><init>()V

    .line 339
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 340
    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/zip/ZipEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez p1, :cond_0

    .line 348
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    return-object v1

    .line 344
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {v0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 346
    :try_start_2
    invoke-direct {p0, v1}, Lorg/apache/tools/ant/taskdefs/Jar;->getManifest(Ljava/io/Reader;)Lorg/apache/tools/ant/taskdefs/Manifest;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 347
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 348
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 344
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_5
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p1

    .line 335
    :try_start_6
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
.end method

.method protected static grabFilesAndDirs(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1115
    new-instance v0, Lorg/apache/tools/zip/ZipFile;

    const-string v1, "utf-8"

    invoke-direct {v0, p0, v1}, Lorg/apache/tools/zip/ZipFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    :try_start_0
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 1117
    invoke-virtual {v0}, Lorg/apache/tools/zip/ZipFile;->getEntries()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/tools/ant/util/StreamUtils;->enumerationAsStream(Ljava/util/Enumeration;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/apache/tools/ant/taskdefs/Jar$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p2}, Lorg/apache/tools/ant/taskdefs/Jar$$ExternalSyntheticLambda1;-><init>(Ljava/util/Set;Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 1131
    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1132
    invoke-virtual {v0}, Lorg/apache/tools/zip/ZipFile;->close()V

    return-void

    :catchall_0
    move-exception p0

    .line 1115
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/tools/zip/ZipFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method private grabManifests([Lorg/apache/tools/ant/types/ResourceCollection;)[[Lorg/apache/tools/ant/types/Resource;
    .locals 10

    .line 1136
    array-length v0, p1

    new-array v0, v0, [[Lorg/apache/tools/ant/types/Resource;

    const/4 v1, 0x0

    move v2, v1

    .line 1137
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_7

    .line 1139
    aget-object v3, p1, v2

    instance-of v4, v3, Lorg/apache/tools/ant/types/FileSet;

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    new-array v4, v5, [Lorg/apache/tools/ant/types/FileSet;

    .line 1140
    check-cast v3, Lorg/apache/tools/ant/types/FileSet;

    aput-object v3, v4, v1

    invoke-virtual {p0, v4}, Lorg/apache/tools/ant/taskdefs/Jar;->grabResources([Lorg/apache/tools/ant/types/FileSet;)[[Lorg/apache/tools/ant/types/Resource;

    move-result-object v3

    goto :goto_1

    :cond_0
    new-array v4, v5, [Lorg/apache/tools/ant/types/ResourceCollection;

    aput-object v3, v4, v1

    .line 1142
    invoke-virtual {p0, v4}, Lorg/apache/tools/ant/taskdefs/Jar;->grabNonFileSetResources([Lorg/apache/tools/ant/types/ResourceCollection;)[[Lorg/apache/tools/ant/types/Resource;

    move-result-object v3

    :goto_1
    move v4, v1

    .line 1145
    :goto_2
    aget-object v6, v3, v1

    array-length v7, v6

    if-ge v4, v7, :cond_5

    .line 1146
    aget-object v6, v6, v4

    invoke-virtual {v6}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x5c

    const/16 v8, 0x2f

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    .line 1147
    aget-object v7, p1, v2

    instance-of v8, v7, Lorg/apache/tools/ant/types/ArchiveFileSet;

    if-eqz v8, :cond_3

    .line 1148
    check-cast v7, Lorg/apache/tools/ant/types/ArchiveFileSet;

    .line 1149
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Jar;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/tools/ant/types/ArchiveFileSet;->getFullpath(Lorg/apache/tools/ant/Project;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1150
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Jar;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v6

    invoke-virtual {v7, v6}, Lorg/apache/tools/ant/types/ArchiveFileSet;->getFullpath(Lorg/apache/tools/ant/Project;)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 1151
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Jar;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/tools/ant/types/ArchiveFileSet;->getPrefix(Lorg/apache/tools/ant/Project;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 1152
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Jar;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/tools/ant/types/ArchiveFileSet;->getPrefix(Lorg/apache/tools/ant/Project;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "/"

    .line 1153
    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "\\"

    invoke-virtual {v7, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1154
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1156
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_3
    :goto_3
    const-string v7, "META-INF/MANIFEST.MF"

    .line 1159
    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    new-array v5, v5, [Lorg/apache/tools/ant/types/Resource;

    .line 1160
    aget-object v3, v3, v1

    aget-object v3, v3, v4

    aput-object v3, v5, v1

    aput-object v5, v0, v2

    goto :goto_4

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 1164
    :cond_5
    :goto_4
    aget-object v3, v0, v2

    if-nez v3, :cond_6

    new-array v3, v1, [Lorg/apache/tools/ant/types/Resource;

    .line 1165
    aput-object v3, v0, v2

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_7
    return-object v0
.end method

.method private jarHasIndex(Ljava/io/File;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 365
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 366
    :try_start_0
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/tools/ant/util/StreamUtils;->enumerationAsStream(Ljava/util/Enumeration;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lorg/apache/tools/ant/taskdefs/Jar$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/Jar$$ExternalSyntheticLambda0;-><init>()V

    .line 367
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    return p1

    :catchall_0
    move-exception p1

    .line 365
    :try_start_1
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method static synthetic lambda$findJarName$3(Ljava/lang/String;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1084
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    :goto_0
    return p0
.end method

.method static synthetic lambda$getManifestFromJar$0(Ljava/util/zip/ZipEntry;)Z
    .locals 1

    const-string v0, "META-INF/MANIFEST.MF"

    .line 339
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$grabFilesAndDirs$4(Ljava/util/Set;Ljava/util/List;Lorg/apache/tools/zip/ZipEntry;)V
    .locals 1

    .line 1118
    invoke-virtual {p2}, Lorg/apache/tools/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1119
    invoke-virtual {p2}, Lorg/apache/tools/zip/ZipEntry;->isDirectory()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1120
    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p2, "/"

    .line 1121
    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 1122
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/16 p1, 0x2f

    .line 1128
    invoke-virtual {v0, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    const/4 p2, 0x0

    invoke-virtual {v0, p2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method static synthetic lambda$jarHasIndex$1(Ljava/util/zip/ZipEntry;)Z
    .locals 1

    const-string v0, "META-INF/INDEX.LIST"

    .line 367
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private writeManifest(Lorg/apache/tools/zip/ZipOutputStream;Lorg/apache/tools/ant/taskdefs/Manifest;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 563
    invoke-virtual {p2}, Lorg/apache/tools/ant/taskdefs/Manifest;->getWarnings()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/util/StreamUtils;->enumerationAsStream(Ljava/util/Enumeration;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/taskdefs/Jar$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/taskdefs/Jar$$ExternalSyntheticLambda2;-><init>(Lorg/apache/tools/ant/taskdefs/Jar;)V

    .line 564
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    const/4 v3, 0x0

    .line 566
    move-object v0, v3

    check-cast v0, Lorg/apache/tools/ant/types/Resource;

    const-string v5, "META-INF/"

    const/16 v6, 0x41ed

    sget-object v7, Lorg/apache/tools/ant/taskdefs/Jar;->JAR_MARKER:[Lorg/apache/tools/zip/ZipExtraField;

    move-object v2, p0

    move-object v4, p1

    invoke-virtual/range {v2 .. v7}, Lorg/apache/tools/ant/taskdefs/Jar;->zipDir(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/zip/ZipOutputStream;Ljava/lang/String;I[Lorg/apache/tools/zip/ZipExtraField;)V

    .line 569
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 570
    new-instance v1, Ljava/io/OutputStreamWriter;

    sget-object v2, Lorg/apache/tools/ant/taskdefs/Manifest;->JAR_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 571
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 572
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->flattenClassPaths:Z

    invoke-virtual {p2, v2, v1}, Lorg/apache/tools/ant/taskdefs/Manifest;->write(Ljava/io/PrintWriter;Z)V

    .line 573
    invoke-virtual {v2}, Ljava/io/PrintWriter;->checkError()Z

    move-result p2

    if-nez p2, :cond_0

    .line 576
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 578
    new-instance p2, Ljava/io/ByteArrayInputStream;

    .line 579
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_0
    const-string v6, "META-INF/MANIFEST.MF"

    .line 582
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const/4 v9, 0x0

    const v10, 0x81a4

    move-object v3, p0

    move-object v4, p2

    move-object v5, p1

    .line 581
    invoke-super/range {v3 .. v10}, Lorg/apache/tools/ant/taskdefs/Zip;->zipFile(Ljava/io/InputStream;Lorg/apache/tools/zip/ZipOutputStream;Ljava/lang/String;JLjava/io/File;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 586
    invoke-static {p2}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    .line 588
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/Zip;->initZipOutputStream(Lorg/apache/tools/zip/ZipOutputStream;)V

    return-void

    :catchall_0
    move-exception p1

    .line 586
    invoke-static {p2}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    .line 587
    throw p1

    .line 574
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Encountered an error writing the manifest"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeServices(Lorg/apache/tools/zip/ZipOutputStream;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 457
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->serviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/spi/Service;

    .line 458
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/spi/Service;->getAsStream()Ljava/io/InputStream;

    move-result-object v10

    .line 460
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "META-INF/services/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 461
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/spi/Service;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 462
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v8, 0x0

    const v9, 0x81a4

    move-object v2, p0

    move-object v3, v10

    move-object v4, p1

    .line 460
    invoke-super/range {v2 .. v9}, Lorg/apache/tools/ant/taskdefs/Zip;->zipFile(Ljava/io/InputStream;Lorg/apache/tools/zip/ZipOutputStream;Ljava/lang/String;JLjava/io/File;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v10, :cond_0

    .line 464
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception p1

    if-eqz v10, :cond_1

    .line 458
    :try_start_1
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw p1

    :cond_2
    return-void
.end method


# virtual methods
.method public addConfiguredIndexJars(Lorg/apache/tools/ant/types/Path;)V
    .locals 2

    .line 412
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->indexJars:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 413
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Jar;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->indexJars:Lorg/apache/tools/ant/types/Path;

    .line 415
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->indexJars:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    return-void
.end method

.method public addConfiguredIndexJarsMapper(Lorg/apache/tools/ant/types/Mapper;)V
    .locals 2

    .line 425
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->indexJarsMapper:Lorg/apache/tools/ant/util/FileNameMapper;

    if-nez v0, :cond_0

    .line 429
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Mapper;->getImplementation()Lorg/apache/tools/ant/util/FileNameMapper;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->indexJarsMapper:Lorg/apache/tools/ant/util/FileNameMapper;

    return-void

    .line 426
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "Cannot define more than one indexjar-mapper"

    .line 427
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Jar;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw p1
.end method

.method public addConfiguredManifest(Lorg/apache/tools/ant/taskdefs/Manifest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/taskdefs/ManifestException;
        }
    .end annotation

    .line 295
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->configuredManifest:Lorg/apache/tools/ant/taskdefs/Manifest;

    if-nez v0, :cond_0

    .line 296
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->configuredManifest:Lorg/apache/tools/ant/taskdefs/Manifest;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 298
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Jar;->mergeClassPaths:Z

    invoke-virtual {v0, p1, v1, v2}, Lorg/apache/tools/ant/taskdefs/Manifest;->merge(Lorg/apache/tools/ant/taskdefs/Manifest;ZZ)V

    .line 300
    :goto_0
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->configuredManifest:Lorg/apache/tools/ant/taskdefs/Manifest;

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->savedConfiguredManifest:Lorg/apache/tools/ant/taskdefs/Manifest;

    return-void
.end method

.method public addConfiguredService(Lorg/apache/tools/ant/types/spi/Service;)V
    .locals 1

    .line 449
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/spi/Service;->check()V

    .line 450
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->serviceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addMetainf(Lorg/apache/tools/ant/types/ZipFileSet;)V
    .locals 1

    const-string v0, "META-INF/"

    .line 402
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/ZipFileSet;->setPrefix(Ljava/lang/String;)V

    .line 403
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/Zip;->addFileset(Lorg/apache/tools/ant/types/FileSet;)V

    return-void
.end method

.method protected cleanUp()V
    .locals 2

    .line 930
    invoke-super {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->cleanUp()V

    .line 931
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Jar;->checkJarSpec()V

    .line 934
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->doubleFilePass:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->skipWriting:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 935
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->manifest:Lorg/apache/tools/ant/taskdefs/Manifest;

    .line 936
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->savedConfiguredManifest:Lorg/apache/tools/ant/taskdefs/Manifest;

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->configuredManifest:Lorg/apache/tools/ant/taskdefs/Manifest;

    .line 937
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->filesetManifest:Lorg/apache/tools/ant/taskdefs/Manifest;

    .line 938
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->originalManifest:Lorg/apache/tools/ant/taskdefs/Manifest;

    .line 940
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->rootEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected createEmptyZip(Ljava/io/File;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-string v0, "Could not create almost empty JAR archive ("

    .line 878
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->createEmpty:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    :cond_0
    const-string v1, "skip"

    .line 882
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Jar;->emptyBehavior:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, " archive "

    if-eqz v1, :cond_2

    .line 883
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->skipWriting:Z

    if-nez v0, :cond_1

    .line 884
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Warning: skipping "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->archiveType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " because no files were included."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lorg/apache/tools/ant/taskdefs/Jar;->log(Ljava/lang/String;I)V

    :cond_1
    return v2

    :cond_2
    const-string v1, "fail"

    .line 890
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Jar;->emptyBehavior:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 897
    iget-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->skipWriting:Z

    if-nez p1, :cond_4

    .line 898
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Building MANIFEST-only jar: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 899
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Jar;->getDestFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 898
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Jar;->log(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 901
    :try_start_0
    new-instance v1, Lorg/apache/tools/zip/ZipOutputStream;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Jar;->getDestFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/apache/tools/zip/ZipOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 902
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Jar;->getEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/tools/zip/ZipOutputStream;->setEncoding(Ljava/lang/String;)V

    .line 903
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Jar;->getZip64Mode()Lorg/apache/tools/ant/taskdefs/Zip$Zip64ModeAttribute;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/Zip$Zip64ModeAttribute;->getMode()Lorg/apache/tools/zip/Zip64Mode;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/tools/zip/ZipOutputStream;->setUseZip64(Lorg/apache/tools/zip/Zip64Mode;)V

    .line 904
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Jar;->isCompress()Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x8

    .line 905
    invoke-virtual {v1, v3}, Lorg/apache/tools/zip/ZipOutputStream;->setMethod(I)V

    goto :goto_0

    .line 907
    :cond_3
    invoke-virtual {v1, p1}, Lorg/apache/tools/zip/ZipOutputStream;->setMethod(I)V

    .line 909
    :goto_0
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/Jar;->initZipOutputStream(Lorg/apache/tools/zip/ZipOutputStream;)V

    .line 910
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/Jar;->finalizeZipOutputStream(Lorg/apache/tools/zip/ZipOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 911
    :try_start_2
    invoke-virtual {v1}, Lorg/apache/tools/zip/ZipOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 916
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->createEmpty:Z

    goto :goto_3

    :catchall_0
    move-exception v2

    .line 901
    :try_start_3
    invoke-virtual {v1}, Lorg/apache/tools/zip/ZipOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 912
    :try_start_5
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 913
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 914
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Jar;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v2, v0, v1, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 916
    :goto_2
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->createEmpty:Z

    .line 917
    throw v0

    :cond_4
    :goto_3
    return v2

    .line 891
    :cond_5
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot create "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Jar;->archiveType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ": no files were included."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 894
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Jar;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method protected finalizeZipOutputStream(Lorg/apache/tools/zip/ZipOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 602
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->index:Z

    if-eqz v0, :cond_0

    .line 603
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/Jar;->createIndexList(Lorg/apache/tools/zip/ZipOutputStream;)V

    :cond_0
    return-void
.end method

.method public getIndexJarsMapper()Lorg/apache/tools/ant/util/FileNameMapper;
    .locals 1

    .line 438
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->indexJarsMapper:Lorg/apache/tools/ant/util/FileNameMapper;

    return-object v0
.end method

.method protected getResourcesToAdd([Lorg/apache/tools/ant/types/ResourceCollection;Ljava/io/File;Z)Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 811
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->skipWriting:Z

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 816
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/Jar;->grabManifests([Lorg/apache/tools/ant/types/ResourceCollection;)[[Lorg/apache/tools/ant/types/Resource;

    move-result-object p1

    .line 818
    array-length p2, p1

    const/4 p3, 0x0

    move v0, p3

    :goto_0
    if-ge p3, p2, :cond_0

    aget-object v3, p1, p3

    .line 819
    array-length v3, v3

    add-int/2addr v0, v3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 821
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "found a total of "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " manifests in "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    array-length p3, p1

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " resource collections"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, v1}, Lorg/apache/tools/ant/taskdefs/Jar;->log(Ljava/lang/String;I)V

    .line 824
    new-instance p2, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;

    invoke-direct {p2, v2, p1}, Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;-><init>(Z[[Lorg/apache/tools/ant/types/Resource;)V

    return-object p2

    .line 828
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 833
    :try_start_0
    invoke-direct {p0, p2}, Lorg/apache/tools/ant/taskdefs/Jar;->getManifestFromJar(Ljava/io/File;)Lorg/apache/tools/ant/taskdefs/Manifest;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->originalManifest:Lorg/apache/tools/ant/taskdefs/Manifest;

    if-nez v0, :cond_2

    const-string p3, "Updating jar since the current jar has no manifest"

    .line 835
    invoke-virtual {p0, p3, v1}, Lorg/apache/tools/ant/taskdefs/Jar;->log(Ljava/lang/String;I)V

    goto :goto_1

    .line 839
    :cond_2
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Jar;->createManifest()Lorg/apache/tools/ant/taskdefs/Manifest;

    move-result-object v0

    .line 840
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Jar;->originalManifest:Lorg/apache/tools/ant/taskdefs/Manifest;

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/taskdefs/Manifest;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string p3, "Updating jar since jar manifest has changed"

    .line 841
    invoke-virtual {p0, p3, v1}, Lorg/apache/tools/ant/taskdefs/Jar;->log(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p3

    .line 847
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "error while reading original manifest in file: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 848
    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " due to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 847
    invoke-virtual {p0, p3, v2}, Lorg/apache/tools/ant/taskdefs/Jar;->log(Ljava/lang/String;I)V

    :cond_3
    :goto_1
    move p3, v2

    .line 858
    :cond_4
    iput-boolean p3, p0, Lorg/apache/tools/ant/taskdefs/Jar;->createEmpty:Z

    if-nez p3, :cond_5

    .line 859
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->index:Z

    if-eqz v0, :cond_5

    .line 861
    :try_start_1
    invoke-direct {p0, p2}, Lorg/apache/tools/ant/taskdefs/Jar;->jarHasIndex(Ljava/io/File;)Z

    move-result p3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    xor-int/2addr v2, p3

    goto :goto_2

    :cond_5
    move v2, p3

    .line 867
    :catch_0
    :goto_2
    invoke-super {p0, p1, p2, v2}, Lorg/apache/tools/ant/taskdefs/Zip;->getResourcesToAdd([Lorg/apache/tools/ant/types/ResourceCollection;Ljava/io/File;Z)Lorg/apache/tools/ant/taskdefs/Zip$ArchiveState;

    move-result-object p1

    return-object p1
.end method

.method protected initZipOutputStream(Lorg/apache/tools/zip/ZipOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 499
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->skipWriting:Z

    if-nez v0, :cond_0

    .line 500
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Jar;->createManifest()Lorg/apache/tools/ant/taskdefs/Manifest;

    move-result-object v0

    .line 501
    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/Jar;->writeManifest(Lorg/apache/tools/zip/ZipOutputStream;Lorg/apache/tools/ant/taskdefs/Manifest;)V

    .line 502
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/Jar;->writeServices(Lorg/apache/tools/zip/ZipOutputStream;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$writeManifest$2$org-apache-tools-ant-taskdefs-Jar(Ljava/lang/String;)V
    .locals 2

    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Manifest warning: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/Jar;->log(Ljava/lang/String;I)V

    return-void
.end method

.method public reset()V
    .locals 2

    .line 989
    invoke-super {p0}, Lorg/apache/tools/ant/taskdefs/Zip;->reset()V

    const-string v0, "create"

    .line 990
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->emptyBehavior:Ljava/lang/String;

    const/4 v0, 0x0

    .line 991
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->configuredManifest:Lorg/apache/tools/ant/taskdefs/Manifest;

    .line 992
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->filesetManifestConfig:Lorg/apache/tools/ant/taskdefs/Jar$FilesetManifestConfig;

    const/4 v1, 0x0

    .line 993
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->mergeManifestsMain:Z

    .line 994
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->manifestFile:Ljava/io/File;

    .line 995
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->index:Z

    return-void
.end method

.method public setFilesetmanifest(Lorg/apache/tools/ant/taskdefs/Jar$FilesetManifestConfig;)V
    .locals 2

    .line 385
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->filesetManifestConfig:Lorg/apache/tools/ant/taskdefs/Jar$FilesetManifestConfig;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const-string v1, "merge"

    .line 386
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Jar$FilesetManifestConfig;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->mergeManifestsMain:Z

    .line 388
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->filesetManifestConfig:Lorg/apache/tools/ant/taskdefs/Jar$FilesetManifestConfig;

    if-eqz p1, :cond_1

    const-string v1, "skip"

    .line 389
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Jar$FilesetManifestConfig;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 391
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->doubleFilePass:Z

    :cond_1
    return-void
.end method

.method public setFlattenAttributes(Z)V
    .locals 0

    .line 486
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->flattenClassPaths:Z

    return-void
.end method

.method public setIndex(Z)V
    .locals 0

    .line 254
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->index:Z

    return-void
.end method

.method public setIndexMetaInf(Z)V
    .locals 0

    .line 274
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->indexMetaInf:Z

    return-void
.end method

.method public setJarfile(Ljava/io/File;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 245
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Jar;->setDestFile(Ljava/io/File;)V

    return-void
.end method

.method public setManifest(Ljava/io/File;)V
    .locals 3

    .line 311
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->manifestFile:Ljava/io/File;

    return-void

    .line 312
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Manifest file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " does not exist."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 313
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Jar;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method public setManifestEncoding(Ljava/lang/String;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->manifestEncoding:Ljava/lang/String;

    return-void
.end method

.method public setMergeClassPathAttributes(Z)V
    .locals 0

    .line 475
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->mergeClassPaths:Z

    return-void
.end method

.method public setStrict(Lorg/apache/tools/ant/taskdefs/Jar$StrictMode;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->strict:Lorg/apache/tools/ant/taskdefs/Jar$StrictMode;

    return-void
.end method

.method public setWhenempty(Lorg/apache/tools/ant/taskdefs/Zip$WhenEmpty;)V
    .locals 1

    const-string p1, "JARs are never empty, they contain at least a manifest file"

    const/4 v0, 0x1

    .line 209
    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/Jar;->log(Ljava/lang/String;I)V

    return-void
.end method

.method public setWhenmanifestonly(Lorg/apache/tools/ant/taskdefs/Zip$WhenEmpty;)V
    .locals 0

    .line 224
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Zip$WhenEmpty;->getValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->emptyBehavior:Ljava/lang/String;

    return-void
.end method

.method protected final writeIndexLikeList(Ljava/util/List;Ljava/util/List;Ljava/io/PrintWriter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/PrintWriter;",
            ")V"
        }
    .end annotation

    .line 1026
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1027
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1028
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v1, 0x5c

    const/16 v2, 0x2f

    .line 1030
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const-string v1, "./"

    .line 1031
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    .line 1032
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_1
    const-string v1, "/"

    .line 1034
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 1035
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1037
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x0

    .line 1039
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1047
    :cond_2
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Jar;->indexMetaInf:Z

    if-nez v1, :cond_3

    const-string v1, "META-INF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 1051
    :cond_3
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1054
    :cond_4
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lorg/apache/tools/ant/taskdefs/Jar$$ExternalSyntheticLambda5;

    invoke-direct {p1, p3}, Lorg/apache/tools/ant/taskdefs/Jar$$ExternalSyntheticLambda5;-><init>(Ljava/io/PrintWriter;)V

    invoke-interface {p2, p1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected zipFile(Ljava/io/InputStream;Lorg/apache/tools/zip/ZipOutputStream;Ljava/lang/String;JLjava/io/File;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "META-INF/MANIFEST.MF"

    .line 705
    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 706
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Jar;->isFirstPass()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 707
    invoke-direct {p0, p6, p1}, Lorg/apache/tools/ant/taskdefs/Jar;->filesetManifest(Ljava/io/File;Ljava/io/InputStream;)V

    goto :goto_0

    :cond_0
    const-string v0, "META-INF/INDEX.LIST"

    .line 709
    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->index:Z

    if-eqz v0, :cond_1

    .line 710
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Warning: selected "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/apache/tools/ant/taskdefs/Jar;->archiveType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " files include a META-INF/INDEX.LIST which will be replaced by a newly generated one."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/Jar;->logWhenWriting(Ljava/lang/String;I)V

    goto :goto_0

    .line 715
    :cond_1
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->index:Z

    if-eqz v0, :cond_2

    const-string v0, "/"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 716
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Jar;->rootEntries:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 718
    :cond_2
    invoke-super/range {p0 .. p7}, Lorg/apache/tools/ant/taskdefs/Zip;->zipFile(Ljava/io/InputStream;Lorg/apache/tools/zip/ZipOutputStream;Ljava/lang/String;JLjava/io/File;I)V

    :cond_3
    :goto_0
    return-void
.end method
