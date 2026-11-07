.class public Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;
.super Lorg/apache/tools/ant/types/selectors/BaseExtendSelector;
.source "ModifiedSelector.java"

# interfaces
.implements Lorg/apache/tools/ant/BuildListener;
.implements Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$CacheName;,
        Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$AlgorithmName;,
        Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$ComparatorName;
    }
.end annotation


# static fields
.field private static final ALGORITHM_PREFIX:Ljava/lang/String; = "algorithm."

.field private static final CACHE_PREFIX:Ljava/lang/String; = "cache."

.field private static final COMPARATOR_PREFIX:Ljava/lang/String; = "comparator."


# instance fields
.field private algoName:Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$AlgorithmName;

.field private algorithm:Lorg/apache/tools/ant/types/selectors/modifiedselector/Algorithm;

.field private algorithmClass:Ljava/lang/String;

.field private cache:Lorg/apache/tools/ant/types/selectors/modifiedselector/Cache;

.field private cacheClass:Ljava/lang/String;

.field private cacheName:Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$CacheName;

.field private classpath:Lorg/apache/tools/ant/types/Path;

.field private compName:Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$ComparatorName;

.field private comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private comparatorClass:Ljava/lang/String;

.field private configParameter:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/types/Parameter;",
            ">;"
        }
    .end annotation
.end field

.field private delayUpdate:Z

.field private isConfigured:Z

.field private modified:I

.field private myClassLoader:Ljava/lang/ClassLoader;

.field private selectDirectories:Z

.field private selectResourcesWithoutInputStream:Z

.field private specialParameter:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/types/Parameter;",
            ">;"
        }
    .end annotation
.end field

.field private update:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 236
    invoke-direct {p0}, Lorg/apache/tools/ant/types/selectors/BaseExtendSelector;-><init>()V

    const/4 v0, 0x0

    .line 158
    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->cacheName:Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$CacheName;

    .line 164
    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->algoName:Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$AlgorithmName;

    .line 170
    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->compName:Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$ComparatorName;

    const/4 v1, 0x1

    .line 176
    iput-boolean v1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->update:Z

    .line 179
    iput-boolean v1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->selectDirectories:Z

    .line 185
    iput-boolean v1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->selectResourcesWithoutInputStream:Z

    .line 188
    iput-boolean v1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->delayUpdate:Z

    .line 195
    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->comparator:Ljava/util/Comparator;

    .line 198
    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->algorithm:Lorg/apache/tools/ant/types/selectors/modifiedselector/Algorithm;

    .line 201
    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->cache:Lorg/apache/tools/ant/types/selectors/modifiedselector/Cache;

    const/4 v1, 0x0

    .line 204
    iput v1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->modified:I

    .line 207
    iput-boolean v1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->isConfigured:Z

    .line 213
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 214
    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->configParameter:Ljava/util/List;

    .line 222
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 223
    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->specialParameter:Ljava/util/List;

    .line 226
    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->myClassLoader:Ljava/lang/ClassLoader;

    .line 229
    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->classpath:Lorg/apache/tools/ant/types/Path;

    return-void
.end method

.method private isSelected(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 494
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->validate()V

    .line 495
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 498
    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 499
    iget-boolean p1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->selectDirectories:Z

    return p1

    .line 503
    :cond_0
    iget-object p1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->cache:Lorg/apache/tools/ant/types/selectors/modifiedselector/Cache;

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/apache/tools/ant/types/selectors/modifiedselector/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 504
    iget-object p2, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->algorithm:Lorg/apache/tools/ant/types/selectors/modifiedselector/Algorithm;

    invoke-interface {p2, p3}, Lorg/apache/tools/ant/types/selectors/modifiedselector/Algorithm;->getValue(Ljava/io/File;)Ljava/lang/String;

    move-result-object p2

    .line 506
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->comparator:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 509
    :goto_0
    iget-boolean v1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->update:Z

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    .line 510
    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->cache:Lorg/apache/tools/ant/types/selectors/modifiedselector/Cache;

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v1, p3, p2}, Lorg/apache/tools/ant/types/selectors/modifiedselector/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 511
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->getModified()I

    move-result p2

    add-int/2addr p2, v0

    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->setModified(I)V

    .line 512
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->getDelayUpdate()Z

    move-result p2

    if-nez p2, :cond_2

    .line 513
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->saveCache()V

    :cond_2
    return p1
.end method


# virtual methods
.method public addClasspath(Lorg/apache/tools/ant/types/Path;)V
    .locals 1

    .line 629
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 632
    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->classpath:Lorg/apache/tools/ant/types/Path;

    return-void

    .line 630
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "<classpath> can be set only once."

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addParam(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 672
    new-instance v0, Lorg/apache/tools/ant/types/Parameter;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/Parameter;-><init>()V

    .line 673
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Parameter;->setName(Ljava/lang/String;)V

    .line 674
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Parameter;->setValue(Ljava/lang/String;)V

    .line 675
    iget-object p1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->configParameter:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addParam(Lorg/apache/tools/ant/types/Parameter;)V
    .locals 1

    .line 684
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->configParameter:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public buildFinished(Lorg/apache/tools/ant/BuildEvent;)V
    .locals 0

    .line 794
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->getDelayUpdate()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 795
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->saveCache()V

    :cond_0
    return-void
.end method

.method public buildStarted(Lorg/apache/tools/ant/BuildEvent;)V
    .locals 0

    return-void
.end method

.method public configure()V
    .locals 7

    .line 280
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->isConfigured:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 283
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->isConfigured:Z

    .line 288
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    const-string v1, "cache.properties"

    if-eqz v0, :cond_1

    .line 293
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/tools/ant/Project;->addBuildListener(Lorg/apache/tools/ant/BuildListener;)V

    goto :goto_0

    .line 299
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 300
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->setDelayUpdate(Z)V

    .line 302
    :goto_0
    new-instance v0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;

    invoke-direct {v0, v2}, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;-><init>(Ljava/io/File;)V

    .line 303
    new-instance v1, Lorg/apache/tools/ant/types/selectors/modifiedselector/DigestAlgorithm;

    invoke-direct {v1}, Lorg/apache/tools/ant/types/selectors/modifiedselector/DigestAlgorithm;-><init>()V

    .line 304
    new-instance v2, Lorg/apache/tools/ant/types/selectors/modifiedselector/EqualComparator;

    invoke-direct {v2}, Lorg/apache/tools/ant/types/selectors/modifiedselector/EqualComparator;-><init>()V

    .line 309
    iget-object v3, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->configParameter:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/tools/ant/types/Parameter;

    .line 310
    invoke-virtual {v4}, Lorg/apache/tools/ant/types/Parameter;->getName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-lez v5, :cond_2

    .line 312
    iget-object v5, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->specialParameter:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 314
    :cond_2
    invoke-virtual {p0, v4}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->useParameter(Lorg/apache/tools/ant/types/Parameter;)V

    goto :goto_1

    .line 317
    :cond_3
    iget-object v3, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->configParameter:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 320
    iget-object v3, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->algoName:Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$AlgorithmName;

    if-eqz v3, :cond_7

    const-string v1, "hashvalue"

    .line 322
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$AlgorithmName;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 323
    new-instance v1, Lorg/apache/tools/ant/types/selectors/modifiedselector/HashvalueAlgorithm;

    invoke-direct {v1}, Lorg/apache/tools/ant/types/selectors/modifiedselector/HashvalueAlgorithm;-><init>()V

    iput-object v1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->algorithm:Lorg/apache/tools/ant/types/selectors/modifiedselector/Algorithm;

    goto :goto_2

    .line 324
    :cond_4
    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->algoName:Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$AlgorithmName;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$AlgorithmName;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v3, "digest"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 325
    new-instance v1, Lorg/apache/tools/ant/types/selectors/modifiedselector/DigestAlgorithm;

    invoke-direct {v1}, Lorg/apache/tools/ant/types/selectors/modifiedselector/DigestAlgorithm;-><init>()V

    iput-object v1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->algorithm:Lorg/apache/tools/ant/types/selectors/modifiedselector/Algorithm;

    goto :goto_2

    .line 326
    :cond_5
    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->algoName:Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$AlgorithmName;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$AlgorithmName;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v3, "checksum"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 327
    new-instance v1, Lorg/apache/tools/ant/types/selectors/modifiedselector/ChecksumAlgorithm;

    invoke-direct {v1}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ChecksumAlgorithm;-><init>()V

    iput-object v1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->algorithm:Lorg/apache/tools/ant/types/selectors/modifiedselector/Algorithm;

    goto :goto_2

    .line 328
    :cond_6
    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->algoName:Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$AlgorithmName;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$AlgorithmName;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v3, "lastmodified"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 329
    new-instance v1, Lorg/apache/tools/ant/types/selectors/modifiedselector/LastModifiedAlgorithm;

    invoke-direct {v1}, Lorg/apache/tools/ant/types/selectors/modifiedselector/LastModifiedAlgorithm;-><init>()V

    iput-object v1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->algorithm:Lorg/apache/tools/ant/types/selectors/modifiedselector/Algorithm;

    goto :goto_2

    .line 331
    :cond_7
    iget-object v3, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->algorithmClass:Ljava/lang/String;

    if-eqz v3, :cond_8

    const-string v1, "is not an Algorithm."

    .line 333
    const-class v4, Lorg/apache/tools/ant/types/selectors/modifiedselector/Algorithm;

    invoke-virtual {p0, v3, v1, v4}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->loadClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/selectors/modifiedselector/Algorithm;

    iput-object v1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->algorithm:Lorg/apache/tools/ant/types/selectors/modifiedselector/Algorithm;

    goto :goto_2

    .line 339
    :cond_8
    iput-object v1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->algorithm:Lorg/apache/tools/ant/types/selectors/modifiedselector/Algorithm;

    .line 343
    :cond_9
    :goto_2
    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->cacheName:Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$CacheName;

    if-eqz v1, :cond_a

    const-string v0, "propertyfile"

    .line 345
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$CacheName;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 346
    new-instance v0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->cache:Lorg/apache/tools/ant/types/selectors/modifiedselector/Cache;

    goto :goto_3

    .line 348
    :cond_a
    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->cacheClass:Ljava/lang/String;

    if-eqz v1, :cond_b

    const-string v0, "is not a Cache."

    .line 350
    const-class v3, Lorg/apache/tools/ant/types/selectors/modifiedselector/Cache;

    invoke-virtual {p0, v1, v0, v3}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->loadClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/selectors/modifiedselector/Cache;

    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->cache:Lorg/apache/tools/ant/types/selectors/modifiedselector/Cache;

    goto :goto_3

    .line 353
    :cond_b
    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->cache:Lorg/apache/tools/ant/types/selectors/modifiedselector/Cache;

    .line 357
    :cond_c
    :goto_3
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->compName:Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$ComparatorName;

    if-eqz v0, :cond_f

    const-string v1, "equal"

    .line 359
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$ComparatorName;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 360
    new-instance v0, Lorg/apache/tools/ant/types/selectors/modifiedselector/EqualComparator;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/EqualComparator;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->comparator:Ljava/util/Comparator;

    goto :goto_4

    .line 361
    :cond_d
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->compName:Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$ComparatorName;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$ComparatorName;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rule"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_4

    .line 365
    :cond_e
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "RuleBasedCollator not yet supported."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 369
    :cond_f
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->comparatorClass:Ljava/lang/String;

    if-eqz v0, :cond_10

    const-string v1, "is not a Comparator."

    .line 372
    const-class v2, Ljava/util/Comparator;

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->loadClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    .line 374
    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->comparator:Ljava/util/Comparator;

    goto :goto_4

    .line 377
    :cond_10
    iput-object v2, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->comparator:Ljava/util/Comparator;

    .line 383
    :goto_4
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->specialParameter:Ljava/util/List;

    new-instance v1, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 384
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->specialParameter:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getAlgorithm()Lorg/apache/tools/ant/types/selectors/modifiedselector/Algorithm;
    .locals 1

    .line 905
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->algorithm:Lorg/apache/tools/ant/types/selectors/modifiedselector/Algorithm;

    return-object v0
.end method

.method public getCache()Lorg/apache/tools/ant/types/selectors/modifiedselector/Cache;
    .locals 1

    .line 874
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->cache:Lorg/apache/tools/ant/types/selectors/modifiedselector/Cache;

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 2

    .line 641
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->myClassLoader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_1

    .line 642
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 644
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0

    .line 647
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->classpath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->createClassLoader(Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/AntClassLoader;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->myClassLoader:Ljava/lang/ClassLoader;

    .line 649
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->myClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 936
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public getDelayUpdate()Z
    .locals 1

    .line 611
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->delayUpdate:Z

    return v0
.end method

.method public getModified()I
    .locals 1

    .line 593
    iget v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->modified:I

    return v0
.end method

.method public isSelected(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)Z
    .locals 0

    .line 481
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->isSelected(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isSelected(Lorg/apache/tools/ant/types/Resource;)Z
    .locals 7

    .line 436
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->isFilesystemOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    check-cast p1, Lorg/apache/tools/ant/types/resources/FileResource;

    .line 440
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/resources/FileResource;->getFile()Ljava/io/File;

    move-result-object v0

    .line 441
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/resources/FileResource;->getName()Ljava/lang/String;

    move-result-object v1

    .line 442
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/resources/FileResource;->getBaseDir()Ljava/io/File;

    move-result-object p1

    .line 443
    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->isSelected(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)Z

    move-result p1

    return p1

    .line 448
    :cond_0
    :try_start_0
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    .line 449
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    const-string v2, "modified-"

    const-string v3, ".tmp"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lorg/apache/tools/ant/util/FileUtils;->createTempFile(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;ZZ)Ljava/io/File;

    move-result-object v0

    .line 450
    new-instance v1, Lorg/apache/tools/ant/types/resources/FileResource;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Ljava/io/File;)V

    .line 451
    invoke-static {p1, v1}, Lorg/apache/tools/ant/util/ResourceUtils;->copyResource(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;)V

    .line 452
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 453
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 454
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->toLongString()Ljava/lang/String;

    move-result-object v3

    .line 452
    invoke-direct {p0, v1, v2, v3}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->isSelected(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 455
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 466
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 458
    :catch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The resource \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 459
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\' does not provide an InputStream, so it is not checked. According to \'selres\' attribute value it is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 462
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->selectResourcesWithoutInputStream:Z

    if-eqz v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v0, " not"

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "selected."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    .line 458
    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->log(Ljava/lang/String;I)V

    .line 464
    iget-boolean p1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->selectResourcesWithoutInputStream:Z

    return p1
.end method

.method protected loadClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 402
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 405
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 407
    :cond_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 410
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 412
    invoke-virtual {p3, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-object v0

    .line 413
    :cond_1
    new-instance p3, Lorg/apache/tools/ant/BuildException;

    const-string v0, "Specified class (%s) %s"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p3, v0, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 419
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    invoke-direct {p2, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 417
    :catch_1
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    const-string p3, "Specified class (%s) not found."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2
.end method

.method public messageLogged(Lorg/apache/tools/ant/BuildEvent;)V
    .locals 0

    return-void
.end method

.method protected saveCache()V
    .locals 1

    .line 524
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->getModified()I

    move-result v0

    if-lez v0, :cond_0

    .line 525
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->cache:Lorg/apache/tools/ant/types/selectors/modifiedselector/Cache;

    invoke-interface {v0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/Cache;->save()V

    const/4 v0, 0x0

    .line 526
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->setModified(I)V

    :cond_0
    return-void
.end method

.method public setAlgorithm(Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$AlgorithmName;)V
    .locals 0

    .line 913
    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->algoName:Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$AlgorithmName;

    return-void
.end method

.method public setAlgorithmClass(Ljava/lang/String;)V
    .locals 0

    .line 539
    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->algorithmClass:Ljava/lang/String;

    return-void
.end method

.method public setCache(Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$CacheName;)V
    .locals 0

    .line 882
    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->cacheName:Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$CacheName;

    return-void
.end method

.method public setCacheClass(Ljava/lang/String;)V
    .locals 0

    .line 557
    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->cacheClass:Ljava/lang/String;

    return-void
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 662
    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->myClassLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public setComparator(Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$ComparatorName;)V
    .locals 0

    .line 944
    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->compName:Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$ComparatorName;

    return-void
.end method

.method public setComparatorClass(Ljava/lang/String;)V
    .locals 0

    .line 548
    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->comparatorClass:Ljava/lang/String;

    return-void
.end method

.method public setDelayUpdate(Z)V
    .locals 0

    .line 620
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->delayUpdate:Z

    return-void
.end method

.method public setModified(I)V
    .locals 0

    .line 602
    iput p1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->modified:I

    return-void
.end method

.method public varargs setParameters([Lorg/apache/tools/ant/types/Parameter;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 698
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->configParameter:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setSeldirs(Z)V
    .locals 0

    .line 575
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->selectDirectories:Z

    return-void
.end method

.method public setSelres(Z)V
    .locals 0

    .line 584
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->selectResourcesWithoutInputStream:Z

    return-void
.end method

.method public setUpdate(Z)V
    .locals 0

    .line 566
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->update:Z

    return-void
.end method

.method public targetFinished(Lorg/apache/tools/ant/BuildEvent;)V
    .locals 0

    .line 806
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->getDelayUpdate()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 807
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->saveCache()V

    :cond_0
    return-void
.end method

.method public targetStarted(Lorg/apache/tools/ant/BuildEvent;)V
    .locals 0

    return-void
.end method

.method public taskFinished(Lorg/apache/tools/ant/BuildEvent;)V
    .locals 0

    .line 818
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->getDelayUpdate()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 819
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->saveCache()V

    :cond_0
    return-void
.end method

.method public taskStarted(Lorg/apache/tools/ant/BuildEvent;)V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 780
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->update:Z

    .line 781
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->selectDirectories:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->cache:Lorg/apache/tools/ant/types/selectors/modifiedselector/Cache;

    iget-object v3, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->algorithm:Lorg/apache/tools/ant/types/selectors/modifiedselector/Algorithm;

    iget-object v4, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->comparator:Ljava/util/Comparator;

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "{modifiedselector update=%s seldirs=%s cache=%s algorithm=%s comparator=%s}"

    .line 780
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected tryToSetAParameter(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 760
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/tools/ant/Project;

    invoke-direct {v0}, Lorg/apache/tools/ant/Project;-><init>()V

    .line 762
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/tools/ant/IntrospectionHelper;->getHelper(Lorg/apache/tools/ant/Project;Ljava/lang/Class;)Lorg/apache/tools/ant/IntrospectionHelper;

    move-result-object v1

    .line 764
    :try_start_0
    invoke-virtual {v1, v0, p1, p2, p3}, Lorg/apache/tools/ant/IntrospectionHelper;->setAttribute(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public useParameter(Lorg/apache/tools/ant/types/Parameter;)V
    .locals 3

    .line 717
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Parameter;->getName()Ljava/lang/String;

    move-result-object v0

    .line 718
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string v1, "cache"

    .line 719
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 720
    new-instance v0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$CacheName;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$CacheName;-><init>()V

    .line 721
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$CacheName;->setValue(Ljava/lang/String;)V

    .line 722
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->setCache(Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$CacheName;)V

    goto/16 :goto_0

    :cond_0
    const-string v1, "algorithm"

    .line 723
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 724
    new-instance v0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$AlgorithmName;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$AlgorithmName;-><init>()V

    .line 725
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$AlgorithmName;->setValue(Ljava/lang/String;)V

    .line 726
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->setAlgorithm(Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$AlgorithmName;)V

    goto/16 :goto_0

    :cond_1
    const-string v1, "comparator"

    .line 727
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 728
    new-instance v0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$ComparatorName;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$ComparatorName;-><init>()V

    .line 729
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$ComparatorName;->setValue(Ljava/lang/String;)V

    .line 730
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->setComparator(Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector$ComparatorName;)V

    goto/16 :goto_0

    :cond_2
    const-string v1, "update"

    .line 731
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "true"

    if-eqz v1, :cond_3

    .line 732
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->setUpdate(Z)V

    goto :goto_0

    :cond_3
    const-string v1, "delayupdate"

    .line 733
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 734
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->setDelayUpdate(Z)V

    goto :goto_0

    :cond_4
    const-string v1, "seldirs"

    .line 735
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 736
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->setSeldirs(Z)V

    goto :goto_0

    :cond_5
    const-string v1, "cache."

    .line 737
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x6

    .line 738
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 739
    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->cache:Lorg/apache/tools/ant/types/selectors/modifiedselector/Cache;

    invoke-virtual {p0, v1, v0, p1}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->tryToSetAParameter(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string v1, "algorithm."

    .line 740
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0xa

    .line 741
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 742
    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->algorithm:Lorg/apache/tools/ant/types/selectors/modifiedselector/Algorithm;

    invoke-virtual {p0, v1, v0, p1}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->tryToSetAParameter(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const-string v1, "comparator."

    .line 743
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v1, 0xb

    .line 744
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 745
    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->comparator:Ljava/util/Comparator;

    invoke-virtual {p0, v1, v0, p1}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->tryToSetAParameter(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 747
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Invalid parameter "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->setError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public verifySettings()V
    .locals 2

    .line 246
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->configure()V

    .line 247
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->cache:Lorg/apache/tools/ant/types/selectors/modifiedselector/Cache;

    if-nez v0, :cond_0

    const-string v0, "Cache must be set."

    .line 248
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->setError(Ljava/lang/String;)V

    goto :goto_0

    .line 249
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->algorithm:Lorg/apache/tools/ant/types/selectors/modifiedselector/Algorithm;

    if-nez v1, :cond_1

    const-string v0, "Algorithm must be set."

    .line 250
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->setError(Ljava/lang/String;)V

    goto :goto_0

    .line 251
    :cond_1
    invoke-interface {v0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/Cache;->isValid()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Cache must be proper configured."

    .line 252
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->setError(Ljava/lang/String;)V

    goto :goto_0

    .line 253
    :cond_2
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->algorithm:Lorg/apache/tools/ant/types/selectors/modifiedselector/Algorithm;

    invoke-interface {v0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/Algorithm;->isValid()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Algorithm must be proper configured."

    .line 254
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;->setError(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
