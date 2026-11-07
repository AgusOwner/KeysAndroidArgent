.class public Lorg/apache/tools/ant/types/XMLCatalog;
.super Lorg/apache/tools/ant/types/DataType;
.source "XMLCatalog.java"

# interfaces
.implements Lorg/xml/sax/EntityResolver;
.implements Ljavax/xml/transform/URIResolver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/types/XMLCatalog$CatalogResolver;,
        Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;,
        Lorg/apache/tools/ant/types/XMLCatalog$InternalResolver;
    }
.end annotation


# static fields
.field public static final APACHE_RESOLVER:Ljava/lang/String; = "org.apache.tools.ant.types.resolver.ApacheCatalogResolver"

.field public static final CATALOG_RESOLVER:Ljava/lang/String; = "org.apache.xml.resolver.tools.CatalogResolver"

.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;


# instance fields
.field private catalogPath:Lorg/apache/tools/ant/types/Path;

.field private catalogResolver:Lorg/apache/tools/ant/types/XMLCatalog$CatalogResolver;

.field private classpath:Lorg/apache/tools/ant/types/Path;

.field private elements:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lorg/apache/tools/ant/types/ResourceLocation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 122
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/types/XMLCatalog;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 158
    invoke-direct {p0}, Lorg/apache/tools/ant/types/DataType;-><init>()V

    .line 127
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog;->elements:Ljava/util/Vector;

    const/4 v0, 0x0

    .line 483
    iput-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog;->catalogResolver:Lorg/apache/tools/ant/types/XMLCatalog$CatalogResolver;

    const/4 v0, 0x0

    .line 159
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/XMLCatalog;->setChecked(Z)V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/tools/ant/types/XMLCatalog;Ljava/lang/String;)Lorg/apache/tools/ant/types/ResourceLocation;
    .locals 0

    .line 118
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/XMLCatalog;->findMatchingEntry(Ljava/lang/String;)Lorg/apache/tools/ant/types/ResourceLocation;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lorg/apache/tools/ant/types/XMLCatalog;Lorg/apache/tools/ant/types/ResourceLocation;)Lorg/xml/sax/InputSource;
    .locals 0

    .line 118
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/XMLCatalog;->filesystemLookup(Lorg/apache/tools/ant/types/ResourceLocation;)Lorg/xml/sax/InputSource;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lorg/apache/tools/ant/types/XMLCatalog;Lorg/apache/tools/ant/types/ResourceLocation;)Lorg/xml/sax/InputSource;
    .locals 0

    .line 118
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/XMLCatalog;->classpathLookup(Lorg/apache/tools/ant/types/ResourceLocation;)Lorg/xml/sax/InputSource;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lorg/apache/tools/ant/types/XMLCatalog;Lorg/apache/tools/ant/types/ResourceLocation;)Lorg/xml/sax/InputSource;
    .locals 0

    .line 118
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/XMLCatalog;->urlLookup(Lorg/apache/tools/ant/types/ResourceLocation;)Lorg/xml/sax/InputSource;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400()Lorg/apache/tools/ant/util/FileUtils;
    .locals 1

    .line 118
    sget-object v0, Lorg/apache/tools/ant/types/XMLCatalog;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-object v0
.end method

.method private classpathLookup(Lorg/apache/tools/ant/types/ResourceLocation;)Lorg/xml/sax/InputSource;
    .locals 3

    .line 700
    iget-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog;->classpath:Lorg/apache/tools/ant/types/Path;

    if-eqz v0, :cond_0

    const-string v1, "ignore"

    .line 702
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Path;->concatSystemClasspath(Ljava/lang/String;)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    goto :goto_0

    .line 704
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    const-string v1, "last"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Path;->concatSystemClasspath(Ljava/lang/String;)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    .line 706
    :goto_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/Project;->createClassLoader(Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/AntClassLoader;

    move-result-object v0

    .line 712
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/ResourceLocation;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/AntClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 715
    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 716
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/ResourceLocation;->getLocation()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/AntClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    .line 717
    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object p1

    .line 718
    invoke-virtual {v2, p1}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 719
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "catalog entry matched a resource in the classpath: \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/types/XMLCatalog;->log(Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method

.method private filesystemLookup(Lorg/apache/tools/ant/types/ResourceLocation;)Lorg/xml/sax/InputSource;
    .locals 6

    const-string v0, "catalog entry matched a readable file: \'"

    .line 624
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/ResourceLocation;->getLocation()Ljava/lang/String;

    move-result-object v1

    .line 626
    sget-char v2, Ljava/io/File;->separatorChar:C

    const/16 v3, 0x2f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 634
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/ResourceLocation;->getBase()Ljava/net/URL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 635
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/ResourceLocation;->getBase()Ljava/net/URL;

    move-result-object p1

    goto :goto_0

    .line 638
    :cond_0
    :try_start_0
    sget-object p1, Lorg/apache/tools/ant/types/XMLCatalog;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/tools/ant/util/FileUtils;->getFileURL(Ljava/io/File;)Ljava/net/URL;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x4

    .line 646
    :try_start_1
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 651
    :catch_0
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 652
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    const-string v5, "uri : \'"

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 653
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\' matches a readable file"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lorg/apache/tools/ant/types/XMLCatalog;->log(Ljava/lang/String;I)V

    .line 656
    :try_start_2
    sget-object v1, Lorg/apache/tools/ant/types/XMLCatalog;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v1, p1}, Lorg/apache/tools/ant/util/FileUtils;->getFileURL(Ljava/io/File;)Ljava/net/URL;

    move-result-object v4
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 658
    :catch_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "could not find an URL for :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 659
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 662
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\' does not match a readable file"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v3}, Lorg/apache/tools/ant/types/XMLCatalog;->log(Ljava/lang/String;I)V

    move-object v4, v2

    :goto_1
    if-eqz v4, :cond_2

    const-string p1, "file"

    .line 669
    invoke-virtual {v4}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 670
    sget-object p1, Lorg/apache/tools/ant/types/XMLCatalog;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/tools/ant/util/FileUtils;->fromURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 672
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "fileName "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lorg/apache/tools/ant/types/XMLCatalog;->log(Ljava/lang/String;I)V

    .line 673
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 674
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 676
    :try_start_3
    new-instance p1, Lorg/xml/sax/InputSource;

    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/nio/file/OpenOption;

    invoke-static {v4, v5}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {p1, v4}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 677
    :try_start_4
    invoke-static {v1}, Lorg/apache/tools/ant/util/JAXPUtils;->getSystemId(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 678
    invoke-virtual {p1, v1}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 679
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lorg/apache/tools/ant/types/XMLCatalog;->log(Ljava/lang/String;I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-object v2, p1

    :catch_3
    :cond_2
    return-object v2

    .line 640
    :catch_4
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "Project basedir cannot be converted to a URL"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private findMatchingEntry(Ljava/lang/String;)Lorg/apache/tools/ant/types/ResourceLocation;
    .locals 2

    .line 592
    invoke-direct {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->getElements()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/types/XMLCatalog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lorg/apache/tools/ant/types/XMLCatalog$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 593
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    const/4 v0, 0x0

    .line 594
    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/tools/ant/types/ResourceLocation;

    return-object p1
.end method

.method private getCatalogResolver()Lorg/apache/tools/ant/types/XMLCatalog$CatalogResolver;
    .locals 4

    const-string v0, "org.apache.tools.ant.types.resolver.ApacheCatalogResolver"

    .line 497
    iget-object v1, p0, Lorg/apache/tools/ant/types/XMLCatalog;->catalogResolver:Lorg/apache/tools/ant/types/XMLCatalog$CatalogResolver;

    if-nez v1, :cond_1

    .line 501
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    sget-object v2, Lorg/apache/tools/ant/types/Path;->systemClasspath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/Project;->createClassLoader(Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/AntClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    .line 504
    :try_start_0
    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 509
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v3, "org.apache.xml.resolver.tools.CatalogResolver"

    .line 513
    invoke-static {v3, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 517
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 523
    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v3, v1, [Ljava/lang/Class;

    .line 525
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 530
    new-instance v3, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;

    invoke-direct {v3, p0, v0, v1}, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;-><init>(Lorg/apache/tools/ant/types/XMLCatalog;Ljava/lang/Class;Ljava/lang/Object;)V

    iput-object v3, p0, Lorg/apache/tools/ant/types/XMLCatalog;->catalogResolver:Lorg/apache/tools/ant/types/XMLCatalog$CatalogResolver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 536
    new-instance v1, Lorg/apache/tools/ant/types/XMLCatalog$InternalResolver;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/types/XMLCatalog$InternalResolver;-><init>(Lorg/apache/tools/ant/types/XMLCatalog;)V

    iput-object v1, p0, Lorg/apache/tools/ant/types/XMLCatalog;->catalogResolver:Lorg/apache/tools/ant/types/XMLCatalog$CatalogResolver;

    .line 537
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->getCatalogPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 538
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->getCatalogPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Path;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-eqz v1, :cond_0

    const-string v1, "Warning: XML resolver not found; external catalogs will be ignored"

    .line 539
    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/types/XMLCatalog;->log(Ljava/lang/String;I)V

    .line 542
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to load Apache resolver: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/types/XMLCatalog;->log(Ljava/lang/String;I)V

    .line 545
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog;->catalogResolver:Lorg/apache/tools/ant/types/XMLCatalog$CatalogResolver;

    return-object v0
.end method

.method private getClasspath()Lorg/apache/tools/ant/types/Path;
    .locals 1

    .line 177
    invoke-direct {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->getRef()Lorg/apache/tools/ant/types/XMLCatalog;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/tools/ant/types/XMLCatalog;->classpath:Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method private getElements()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lorg/apache/tools/ant/types/ResourceLocation;",
            ">;"
        }
    .end annotation

    .line 168
    invoke-direct {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->getRef()Lorg/apache/tools/ant/types/XMLCatalog;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/tools/ant/types/XMLCatalog;->elements:Ljava/util/Vector;

    return-object v0
.end method

.method private getRef()Lorg/apache/tools/ant/types/XMLCatalog;
    .locals 1

    .line 474
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 477
    :cond_0
    const-class v0, Lorg/apache/tools/ant/types/XMLCatalog;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/XMLCatalog;->getCheckedRef(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/XMLCatalog;

    return-object v0
.end method

.method static synthetic lambda$findMatchingEntry$0(Ljava/lang/String;Lorg/apache/tools/ant/types/ResourceLocation;)Z
    .locals 0

    .line 593
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/ResourceLocation;->getPublicId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private removeFragment(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "#"

    .line 609
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x0

    .line 611
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private setEntityResolver(Ljavax/xml/transform/sax/SAXSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 569
    invoke-virtual {p1}, Ljavax/xml/transform/sax/SAXSource;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    if-nez v0, :cond_0

    .line 571
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    const/4 v1, 0x1

    .line 572
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 574
    :try_start_0
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 576
    :goto_0
    new-instance v0, Ljavax/xml/transform/TransformerException;

    invoke-direct {v0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 579
    :cond_0
    :goto_1
    invoke-interface {v0, p0}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 580
    invoke-virtual {p1, v0}, Ljavax/xml/transform/sax/SAXSource;->setXMLReader(Lorg/xml/sax/XMLReader;)V

    return-void
.end method

.method private urlLookup(Lorg/apache/tools/ant/types/ResourceLocation;)Lorg/xml/sax/InputSource;
    .locals 4

    const-string v0, "catalog entry matched as a URL: \'"

    .line 734
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/ResourceLocation;->getLocation()Ljava/lang/String;

    move-result-object v1

    .line 742
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/ResourceLocation;->getBase()Ljava/net/URL;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 743
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/ResourceLocation;->getBase()Ljava/net/URL;

    move-result-object p1

    goto :goto_0

    .line 746
    :cond_0
    :try_start_0
    sget-object p1, Lorg/apache/tools/ant/types/XMLCatalog;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/tools/ant/util/FileUtils;->getFileURL(Ljava/io/File;)Ljava/net/URL;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    const/4 v2, 0x0

    .line 755
    :try_start_1
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_2

    .line 764
    :try_start_2
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 766
    invoke-virtual {p1, v1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 767
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    goto :goto_2

    :cond_1
    move-object p1, v2

    :goto_2
    if-eqz p1, :cond_2

    .line 770
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 771
    :try_start_3
    invoke-virtual {v3}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object p1

    .line 772
    invoke-virtual {v1, p1}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 773
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/types/XMLCatalog;->log(Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-object v2, v1

    :catch_2
    :cond_2
    return-object v2

    .line 748
    :catch_3
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "Project basedir cannot be converted to a URL"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addConfiguredXMLCatalog(Lorg/apache/tools/ant/types/XMLCatalog;)V
    .locals 2

    .line 327
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 332
    invoke-direct {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->getElements()Ljava/util/Vector;

    move-result-object v0

    invoke-direct {p1}, Lorg/apache/tools/ant/types/XMLCatalog;->getElements()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 335
    invoke-direct {p1}, Lorg/apache/tools/ant/types/XMLCatalog;->getClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    .line 336
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->createClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    .line 339
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/XMLCatalog;->getCatalogPath()Lorg/apache/tools/ant/types/Path;

    move-result-object p1

    .line 340
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->createCatalogPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    const/4 p1, 0x0

    .line 341
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/XMLCatalog;->setChecked(Z)V

    return-void

    .line 328
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public addDTD(Lorg/apache/tools/ant/types/ResourceLocation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 295
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    invoke-direct {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->getElements()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 300
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/XMLCatalog;->setChecked(Z)V

    return-void

    .line 296
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public addEntity(Lorg/apache/tools/ant/types/ResourceLocation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 315
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/XMLCatalog;->addDTD(Lorg/apache/tools/ant/types/ResourceLocation;)V

    return-void
.end method

.method public createCatalogPath()Lorg/apache/tools/ant/types/Path;
    .locals 2

    .line 245
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->isReference()Z

    move-result v0

    if-nez v0, :cond_1

    .line 248
    iget-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog;->catalogPath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 249
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog;->catalogPath:Lorg/apache/tools/ant/types/Path;

    :cond_0
    const/4 v0, 0x0

    .line 251
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/XMLCatalog;->setChecked(Z)V

    .line 252
    iget-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog;->catalogPath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0

    .line 246
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public createClasspath()Lorg/apache/tools/ant/types/Path;
    .locals 2

    .line 189
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->isReference()Z

    move-result v0

    if-nez v0, :cond_1

    .line 192
    iget-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 193
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog;->classpath:Lorg/apache/tools/ant/types/Path;

    :cond_0
    const/4 v0, 0x0

    .line 195
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/XMLCatalog;->setChecked(Z)V

    .line 196
    iget-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog;->classpath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0

    .line 190
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method protected declared-synchronized dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/apache/tools/ant/Project;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    monitor-enter p0

    .line 454
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->isChecked()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 455
    monitor-exit p0

    return-void

    .line 457
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->isReference()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 458
    invoke-super {p0, p1, p2}, Lorg/apache/tools/ant/types/DataType;->dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    goto :goto_0

    .line 460
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog;->classpath:Lorg/apache/tools/ant/types/Path;

    if-eqz v0, :cond_2

    .line 461
    invoke-static {v0, p1, p2}, Lorg/apache/tools/ant/types/XMLCatalog;->pushAndInvokeCircularReferenceCheck(Lorg/apache/tools/ant/types/DataType;Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    .line 463
    :cond_2
    iget-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog;->catalogPath:Lorg/apache/tools/ant/types/Path;

    if-eqz v0, :cond_3

    .line 464
    invoke-static {v0, p1, p2}, Lorg/apache/tools/ant/types/XMLCatalog;->pushAndInvokeCircularReferenceCheck(Lorg/apache/tools/ant/types/DataType;Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    :cond_3
    const/4 p1, 0x1

    .line 466
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/XMLCatalog;->setChecked(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 468
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getCatalogPath()Lorg/apache/tools/ant/types/Path;
    .locals 1

    .line 279
    invoke-direct {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->getRef()Lorg/apache/tools/ant/types/XMLCatalog;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/tools/ant/types/XMLCatalog;->catalogPath:Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method public resolve(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/transform/Source;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 409
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    invoke-direct {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->getRef()Lorg/apache/tools/ant/types/XMLCatalog;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/types/XMLCatalog;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/transform/Source;

    move-result-object p1

    return-object p1

    .line 413
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->dieOnCircularReference()V

    .line 417
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/XMLCatalog;->removeFragment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 419
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "resolve: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' with base: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {p0, v1, v3}, Lorg/apache/tools/ant/types/XMLCatalog;->log(Ljava/lang/String;I)V

    .line 421
    invoke-direct {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->getCatalogResolver()Lorg/apache/tools/ant/types/XMLCatalog$CatalogResolver;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Lorg/apache/tools/ant/types/XMLCatalog$CatalogResolver;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/transform/Source;

    move-result-object v1

    check-cast v1, Ljavax/xml/transform/sax/SAXSource;

    if-nez v1, :cond_3

    .line 424
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "No matching catalog entry found, parser will use: \'"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v3}, Lorg/apache/tools/ant/types/XMLCatalog;->log(Ljava/lang/String;I)V

    .line 430
    new-instance v1, Ljavax/xml/transform/sax/SAXSource;

    invoke-direct {v1}, Ljavax/xml/transform/sax/SAXSource;-><init>()V

    if-nez p2, :cond_1

    .line 434
    :try_start_0
    sget-object p1, Lorg/apache/tools/ant/types/XMLCatalog;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/util/FileUtils;->getFileURL(Ljava/io/File;)Ljava/net/URL;

    move-result-object p1

    goto :goto_0

    .line 436
    :cond_1
    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 438
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, p1, v0}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    move-object p1, p2

    .line 439
    :goto_1
    new-instance p2, Lorg/xml/sax/InputSource;

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljavax/xml/transform/sax/SAXSource;->setInputSource(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 443
    :catch_0
    new-instance p1, Lorg/xml/sax/InputSource;

    invoke-direct {p1, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljavax/xml/transform/sax/SAXSource;->setInputSource(Lorg/xml/sax/InputSource;)V

    .line 447
    :cond_3
    :goto_2
    invoke-direct {p0, v1}, Lorg/apache/tools/ant/types/XMLCatalog;->setEntityResolver(Ljavax/xml/transform/sax/SAXSource;)V

    return-object v1
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 377
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    invoke-direct {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->getRef()Lorg/apache/tools/ant/types/XMLCatalog;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/types/XMLCatalog;->resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;

    move-result-object p1

    return-object p1

    .line 381
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->dieOnCircularReference()V

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "resolveEntity: \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\': \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/types/XMLCatalog;->log(Ljava/lang/String;I)V

    .line 387
    invoke-direct {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->getCatalogResolver()Lorg/apache/tools/ant/types/XMLCatalog$CatalogResolver;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/tools/ant/types/XMLCatalog$CatalogResolver;->resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;

    move-result-object p1

    if-nez p1, :cond_1

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "No matching catalog entry found, parser will use: \'"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, v2}, Lorg/apache/tools/ant/types/XMLCatalog;->log(Ljava/lang/String;I)V

    :cond_1
    return-object p1
.end method

.method public setCatalogPathRef(Lorg/apache/tools/ant/types/Reference;)V
    .locals 1

    .line 265
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->createCatalogPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    const/4 p1, 0x0

    .line 269
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/XMLCatalog;->setChecked(Z)V

    return-void

    .line 266
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public setClasspath(Lorg/apache/tools/ant/types/Path;)V
    .locals 1

    .line 208
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->isReference()Z

    move-result v0

    if-nez v0, :cond_1

    .line 211
    iget-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 212
    iput-object p1, p0, Lorg/apache/tools/ant/types/XMLCatalog;->classpath:Lorg/apache/tools/ant/types/Path;

    goto :goto_0

    .line 214
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    :goto_0
    const/4 p1, 0x0

    .line 216
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/XMLCatalog;->setChecked(Z)V

    return-void

    .line 209
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public setClasspathRef(Lorg/apache/tools/ant/types/Reference;)V
    .locals 1

    .line 228
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->createClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    const/4 p1, 0x0

    .line 232
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/XMLCatalog;->setChecked(Z)V

    return-void

    .line 229
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public setRefid(Lorg/apache/tools/ant/types/Reference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 358
    iget-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog;->elements:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/DataType;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    return-void

    .line 359
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/XMLCatalog;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method
