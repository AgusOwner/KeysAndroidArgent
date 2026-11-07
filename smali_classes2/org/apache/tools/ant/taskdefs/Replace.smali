.class public Lorg/apache/tools/ant/taskdefs/Replace;
.super Lorg/apache/tools/ant/taskdefs/MatchingTask;
.source "Replace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/Replace$NestedString;,
        Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;,
        Lorg/apache/tools/ant/taskdefs/Replace$FileInput;,
        Lorg/apache/tools/ant/taskdefs/Replace$FileOutput;
    }
.end annotation


# static fields
.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;


# instance fields
.field private dir:Ljava/io/File;

.field private encoding:Ljava/lang/String;

.field private failOnNoReplacements:Z

.field private fileCount:I

.field private preserveLastModified:Z

.field private properties:Ljava/util/Properties;

.field private propertyResource:Lorg/apache/tools/ant/types/Resource;

.field private replaceCount:I

.field private replaceFilterResource:Lorg/apache/tools/ant/types/Resource;

.field private replacefilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;",
            ">;"
        }
    .end annotation
.end field

.field private resources:Lorg/apache/tools/ant/types/resources/Union;

.field private sourceFile:Ljava/io/File;

.field private summary:Z

.field private token:Lorg/apache/tools/ant/taskdefs/Replace$NestedString;

.field private value:Lorg/apache/tools/ant/taskdefs/Replace$NestedString;


# direct methods
.method public static synthetic $r8$lambda$2meHZb4xNfJvZgNK9a664xdOtcM(Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 62
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Replace;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 60
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/MatchingTask;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->sourceFile:Ljava/io/File;

    .line 65
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->token:Lorg/apache/tools/ant/taskdefs/Replace$NestedString;

    .line 66
    new-instance v1, Lorg/apache/tools/ant/taskdefs/Replace$NestedString;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/taskdefs/Replace$NestedString;-><init>(Lorg/apache/tools/ant/taskdefs/Replace;)V

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Replace;->value:Lorg/apache/tools/ant/taskdefs/Replace$NestedString;

    .line 68
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->propertyResource:Lorg/apache/tools/ant/types/Resource;

    .line 69
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->replaceFilterResource:Lorg/apache/tools/ant/types/Resource;

    .line 70
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->properties:Ljava/util/Properties;

    .line 71
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Replace;->replacefilters:Ljava/util/List;

    .line 73
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->dir:Ljava/io/File;

    const/4 v1, 0x0

    .line 77
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Replace;->summary:Z

    .line 80
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->encoding:Ljava/lang/String;

    .line 84
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Replace;->preserveLastModified:Z

    .line 85
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Replace;->failOnNoReplacements:Z

    return-void
.end method

.method static synthetic access$000(Lorg/apache/tools/ant/taskdefs/Replace;)Lorg/apache/tools/ant/types/Resource;
    .locals 0

    .line 60
    iget-object p0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->propertyResource:Lorg/apache/tools/ant/types/Resource;

    return-object p0
.end method

.method static synthetic access$100(Lorg/apache/tools/ant/taskdefs/Replace;)Ljava/util/Properties;
    .locals 0

    .line 60
    iget-object p0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->properties:Ljava/util/Properties;

    return-object p0
.end method

.method static synthetic access$200(Lorg/apache/tools/ant/taskdefs/Replace;)Lorg/apache/tools/ant/taskdefs/Replace$NestedString;
    .locals 0

    .line 60
    iget-object p0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->value:Lorg/apache/tools/ant/taskdefs/Replace$NestedString;

    return-object p0
.end method

.method static synthetic access$304(Lorg/apache/tools/ant/taskdefs/Replace;)I
    .locals 1

    .line 60
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->replaceCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->replaceCount:I

    return v0
.end method

.method static synthetic access$400(Lorg/apache/tools/ant/taskdefs/Replace;)Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->encoding:Ljava/lang/String;

    return-object p0
.end method

.method private buildFilterChain(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2

    .line 713
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->replacefilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;

    .line 714
    invoke-virtual {v1, p1}, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;->setInputBuffer(Ljava/lang/StringBuffer;)V

    .line 715
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;->getOutputBuffer()Ljava/lang/StringBuffer;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private createPrimaryfilter()Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;
    .locals 3

    .line 909
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;-><init>(Lorg/apache/tools/ant/taskdefs/Replace;)V

    .line 910
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Replace;->replacefilters:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object v0
.end method

.method private flushFilterChain()V
    .locals 2

    .line 694
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->replacefilters:Ljava/util/List;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/Replace$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/Replace$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private getOrderedIterator(Ljava/util/Properties;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Properties;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 938
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 939
    new-instance p1, Lorg/apache/tools/ant/taskdefs/Replace$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lorg/apache/tools/ant/taskdefs/Replace$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 940
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method private logFilterChain(Ljava/lang/String;)V
    .locals 2

    .line 725
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->replacefilters:Ljava/util/List;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/Replace$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lorg/apache/tools/ant/taskdefs/Replace$$ExternalSyntheticLambda3;-><init>(Lorg/apache/tools/ant/taskdefs/Replace;Ljava/lang/String;)V

    .line 726
    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private processFile(Ljava/io/File;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 643
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 648
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->replaceCount:I

    .line 649
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/tools/ant/taskdefs/Replace;->logFilterChain(Ljava/lang/String;)V

    .line 652
    :try_start_0
    sget-object v2, Lorg/apache/tools/ant/taskdefs/Replace;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Replace;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    const-string v4, "rep"

    const-string v5, ".tmp"

    .line 653
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 652
    invoke-virtual/range {v2 .. v8}, Lorg/apache/tools/ant/util/FileUtils;->createTempFile(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;ZZ)Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 655
    :try_start_1
    new-instance v2, Lorg/apache/tools/ant/taskdefs/Replace$FileInput;

    invoke-direct {v2, p0, p1}, Lorg/apache/tools/ant/taskdefs/Replace$FileInput;-><init>(Lorg/apache/tools/ant/taskdefs/Replace;Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 656
    :try_start_2
    new-instance v3, Lorg/apache/tools/ant/taskdefs/Replace$FileOutput;

    invoke-direct {v3, p0, v1}, Lorg/apache/tools/ant/taskdefs/Replace$FileOutput;-><init>(Lorg/apache/tools/ant/taskdefs/Replace;Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 657
    :try_start_3
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Replace$FileInput;->getOutputBuffer()Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/apache/tools/ant/taskdefs/Replace;->buildFilterChain(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/taskdefs/Replace$FileOutput;->setInputBuffer(Ljava/lang/StringBuffer;)V

    .line 659
    :cond_0
    :goto_0
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Replace$FileInput;->readChunk()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 660
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Replace;->processFilterChain()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 661
    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/Replace$FileOutput;->process()Z

    goto :goto_0

    .line 665
    :cond_1
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Replace;->flushFilterChain()V

    .line 667
    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/Replace$FileOutput;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 668
    :try_start_4
    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/Replace$FileOutput;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Replace$FileInput;->close()V

    .line 669
    iget v2, p0, Lorg/apache/tools/ant/taskdefs/Replace;->replaceCount:I

    const/4 v3, 0x1

    if-eq v2, v0, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 671
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->fileCount:I

    add-int/2addr v0, v3

    iput v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->fileCount:I

    .line 672
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    .line 673
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Replace;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v0, v1, p1, v3}, Lorg/apache/tools/ant/util/FileUtils;->rename(Ljava/io/File;Ljava/io/File;Z)V

    .line 674
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Replace;->preserveLastModified:Z

    if-eqz v2, :cond_3

    .line 675
    invoke-virtual {v0, p1, v4, v5}, Lorg/apache/tools/ant/util/FileUtils;->setFileLastModified(Ljava/io/File;J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 679
    :cond_3
    :try_start_6
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_4

    .line 680
    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    .line 655
    :try_start_7
    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/Replace$FileOutput;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v3

    :try_start_8
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v0

    :try_start_9
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Replace$FileInput;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v2

    :try_start_a
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception v0

    .line 679
    :try_start_b
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_5

    .line 680
    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V

    .line 682
    :cond_5
    throw v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    :catch_0
    move-exception v0

    .line 684
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IOException in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " - "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 685
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 686
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Replace;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, p1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 644
    :cond_6
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Replace: source file "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " doesn\'t exist"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 645
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Replace;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method private processFilterChain()Z
    .locals 2

    .line 702
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->replacefilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/taskdefs/Replace$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/Replace$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method private stringReplace(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 922
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 923
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 924
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    :goto_0
    if-ltz v0, :cond_0

    add-int v3, v0, v1

    .line 926
    invoke-virtual {p1, v0, v3, p3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v0, v2

    .line 927
    invoke-virtual {p1, p2, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addConfigured(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .locals 1

    .line 873
    invoke-interface {p1}, Lorg/apache/tools/ant/types/ResourceCollection;->isFilesystemOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 876
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->resources:Lorg/apache/tools/ant/types/resources/Union;

    if-nez v0, :cond_0

    .line 877
    new-instance v0, Lorg/apache/tools/ant/types/resources/Union;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/Union;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->resources:Lorg/apache/tools/ant/types/resources/Union;

    .line 879
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->resources:Lorg/apache/tools/ant/types/resources/Union;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/resources/Union;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    return-void

    .line 874
    :cond_1
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "only filesystem resources are supported"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createReplaceToken()Lorg/apache/tools/ant/taskdefs/Replace$NestedString;
    .locals 1

    .line 819
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->token:Lorg/apache/tools/ant/taskdefs/Replace$NestedString;

    if-nez v0, :cond_0

    .line 820
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Replace$NestedString;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/Replace$NestedString;-><init>(Lorg/apache/tools/ant/taskdefs/Replace;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->token:Lorg/apache/tools/ant/taskdefs/Replace$NestedString;

    .line 822
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->token:Lorg/apache/tools/ant/taskdefs/Replace$NestedString;

    return-object v0
.end method

.method public createReplaceValue()Lorg/apache/tools/ant/taskdefs/Replace$NestedString;
    .locals 1

    .line 830
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->value:Lorg/apache/tools/ant/taskdefs/Replace$NestedString;

    return-object v0
.end method

.method public createReplacefilter()Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;
    .locals 2

    .line 861
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;-><init>(Lorg/apache/tools/ant/taskdefs/Replace;)V

    .line 862
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Replace;->replacefilters:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public execute()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 493
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Replace;->replacefilters:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 495
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Replace;->properties:Ljava/util/Properties;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Properties;

    .line 497
    :goto_0
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Replace;->token:Lorg/apache/tools/ant/taskdefs/Replace$NestedString;

    if-eqz v2, :cond_1

    .line 501
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Replace;->value:Lorg/apache/tools/ant/taskdefs/Replace$NestedString;

    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/Replace$NestedString;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\r\n"

    const-string v4, "\n"

    .line 502
    invoke-direct {p0, v2, v3, v4}, Lorg/apache/tools/ant/taskdefs/Replace;->stringReplace(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v5}, Lorg/apache/tools/ant/taskdefs/Replace;->stringReplace(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/Replace;->token:Lorg/apache/tools/ant/taskdefs/Replace$NestedString;

    invoke-virtual {v6}, Lorg/apache/tools/ant/taskdefs/Replace$NestedString;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 505
    invoke-direct {p0, v5, v3, v4}, Lorg/apache/tools/ant/taskdefs/Replace;->stringReplace(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v5, v4, v3}, Lorg/apache/tools/ant/taskdefs/Replace;->stringReplace(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Replace;->createPrimaryfilter()Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;

    move-result-object v3

    .line 508
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;->setToken(Ljava/lang/String;)V

    .line 509
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;->setValue(Ljava/lang/String;)V

    .line 513
    :cond_1
    :try_start_0
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Replace;->replaceFilterResource:Lorg/apache/tools/ant/types/Resource;

    if-eqz v2, :cond_2

    .line 514
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/taskdefs/Replace;->getProperties(Lorg/apache/tools/ant/types/Resource;)Ljava/util/Properties;

    move-result-object v2

    .line 515
    invoke-direct {p0, v2}, Lorg/apache/tools/ant/taskdefs/Replace;->getOrderedIterator(Ljava/util/Properties;)Ljava/util/Iterator;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/tools/ant/util/StreamUtils;->iteratorAsStream(Ljava/util/Iterator;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lorg/apache/tools/ant/taskdefs/Replace$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0, v2}, Lorg/apache/tools/ant/taskdefs/Replace$$ExternalSyntheticLambda5;-><init>(Lorg/apache/tools/ant/taskdefs/Replace;Ljava/util/Properties;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 522
    :cond_2
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Replace;->validateAttributes()V

    .line 524
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Replace;->propertyResource:Lorg/apache/tools/ant/types/Resource;

    if-eqz v2, :cond_3

    .line 525
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/taskdefs/Replace;->getProperties(Lorg/apache/tools/ant/types/Resource;)Ljava/util/Properties;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Replace;->properties:Ljava/util/Properties;

    .line 528
    :cond_3
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Replace;->validateReplacefilters()V

    const/4 v2, 0x0

    .line 529
    iput v2, p0, Lorg/apache/tools/ant/taskdefs/Replace;->fileCount:I

    .line 530
    iput v2, p0, Lorg/apache/tools/ant/taskdefs/Replace;->replaceCount:I

    .line 532
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Replace;->sourceFile:Ljava/io/File;

    if-eqz v3, :cond_4

    .line 533
    invoke-direct {p0, v3}, Lorg/apache/tools/ant/taskdefs/Replace;->processFile(Ljava/io/File;)V

    .line 536
    :cond_4
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Replace;->dir:Ljava/io/File;

    if-eqz v3, :cond_5

    .line 537
    invoke-super {p0, v3}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->getDirectoryScanner(Ljava/io/File;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v3

    .line 538
    invoke-virtual {v3}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_5

    aget-object v5, v3, v2

    .line 539
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lorg/apache/tools/ant/taskdefs/Replace;->dir:Ljava/io/File;

    invoke-direct {v6, v7, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 540
    invoke-direct {p0, v6}, Lorg/apache/tools/ant/taskdefs/Replace;->processFile(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 544
    :cond_5
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Replace;->resources:Lorg/apache/tools/ant/types/resources/Union;

    if-eqz v2, :cond_6

    .line 545
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/resources/Union;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/tools/ant/types/Resource;

    .line 546
    const-class v4, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-interface {v3}, Lorg/apache/tools/ant/types/resources/FileProvider;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/tools/ant/taskdefs/Replace;->processFile(Ljava/io/File;)V

    goto :goto_2

    .line 550
    :cond_6
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Replace;->summary:Z

    if-eqz v2, :cond_7

    .line 551
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Replaced "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/apache/tools/ant/taskdefs/Replace;->replaceCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " occurrences in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/apache/tools/ant/taskdefs/Replace;->fileCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " files."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Lorg/apache/tools/ant/taskdefs/Replace;->log(Ljava/lang/String;I)V

    .line 554
    :cond_7
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Replace;->failOnNoReplacements:Z

    if-eqz v2, :cond_9

    iget v2, p0, Lorg/apache/tools/ant/taskdefs/Replace;->replaceCount:I

    if-eqz v2, :cond_8

    goto :goto_3

    .line 555
    :cond_8
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    const-string v3, "didn\'t replace anything"

    invoke-direct {v2, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 558
    :cond_9
    :goto_3
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->replacefilters:Ljava/util/List;

    .line 559
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Replace;->properties:Ljava/util/Properties;

    return-void

    :catchall_0
    move-exception v2

    .line 558
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->replacefilters:Ljava/util/List;

    .line 559
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Replace;->properties:Ljava/util/Properties;

    .line 560
    throw v2
.end method

.method public getProperties(Ljava/io/File;)Ljava/util/Properties;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 611
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResource;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Replace;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Lorg/apache/tools/ant/Project;Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Replace;->getProperties(Lorg/apache/tools/ant/types/Resource;)Ljava/util/Properties;

    move-result-object p1

    return-object p1
.end method

.method public getProperties(Lorg/apache/tools/ant/types/Resource;)Ljava/util/Properties;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 623
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 625
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 626
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 627
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    .line 625
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 628
    :catch_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    .line 629
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Property resource (%s) cannot be loaded."

    invoke-direct {v0, v1, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method synthetic lambda$execute$0$org-apache-tools-ant-taskdefs-Replace(Ljava/util/Properties;Ljava/lang/String;)V
    .locals 1

    .line 516
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Replace;->createReplacefilter()Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;

    move-result-object v0

    .line 517
    invoke-virtual {v0, p2}, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;->setToken(Ljava/lang/String;)V

    .line 518
    invoke-virtual {p1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$logFilterChain$1$org-apache-tools-ant-taskdefs-Replace(Ljava/lang/String;Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;)V
    .locals 2

    .line 727
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Replacing in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 728
    invoke-virtual {p2}, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " --> "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 729
    invoke-virtual {p2}, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;->getReplaceValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    .line 727
    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/Replace;->log(Ljava/lang/String;I)V

    return-void
.end method

.method public setDir(Ljava/io/File;)V
    .locals 0

    .line 782
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Replace;->dir:Ljava/io/File;

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    .line 811
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Replace;->encoding:Ljava/lang/String;

    return-void
.end method

.method public setFailOnNoReplacements(Z)V
    .locals 0

    .line 900
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Replace;->failOnNoReplacements:Z

    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .locals 0

    .line 738
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Replace;->sourceFile:Ljava/io/File;

    return-void
.end method

.method public setPreserveLastModified(Z)V
    .locals 0

    .line 890
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Replace;->preserveLastModified:Z

    return-void
.end method

.method public setPropertyFile(Ljava/io/File;)V
    .locals 1

    .line 840
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResource;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Replace;->setPropertyResource(Lorg/apache/tools/ant/types/Resource;)V

    return-void
.end method

.method public setPropertyResource(Lorg/apache/tools/ant/types/Resource;)V
    .locals 0

    .line 853
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Replace;->propertyResource:Lorg/apache/tools/ant/types/Resource;

    return-void
.end method

.method public setReplaceFilterFile(Ljava/io/File;)V
    .locals 2

    .line 761
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResource;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Replace;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Lorg/apache/tools/ant/Project;Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Replace;->setReplaceFilterResource(Lorg/apache/tools/ant/types/Resource;)V

    return-void
.end method

.method public setReplaceFilterResource(Lorg/apache/tools/ant/types/Resource;)V
    .locals 0

    .line 773
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Replace;->replaceFilterResource:Lorg/apache/tools/ant/types/Resource;

    return-void
.end method

.method public setSummary(Z)V
    .locals 0

    .line 750
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Replace;->summary:Z

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 1

    .line 792
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Replace;->createReplaceToken()Lorg/apache/tools/ant/taskdefs/Replace$NestedString;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Replace$NestedString;->addText(Ljava/lang/String;)V

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1

    .line 801
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Replace;->createReplaceValue()Lorg/apache/tools/ant/taskdefs/Replace$NestedString;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Replace$NestedString;->addText(Ljava/lang/String;)V

    return-void
.end method

.method public validateAttributes()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 571
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->sourceFile:Ljava/io/File;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->dir:Ljava/io/File;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->resources:Lorg/apache/tools/ant/types/resources/Union;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 572
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Either the file or the dir attribute or nested resources must be specified"

    .line 574
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Replace;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 576
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->propertyResource:Lorg/apache/tools/ant/types/Resource;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->isExists()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 577
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Property file "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Replace;->propertyResource:Lorg/apache/tools/ant/types/Resource;

    .line 578
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not exist."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 579
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Replace;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 581
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->token:Lorg/apache/tools/ant/taskdefs/Replace$NestedString;

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->replacefilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    .line 582
    :cond_4
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Either token or a nested replacefilter must be specified"

    .line 584
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Replace;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 586
    :cond_5
    :goto_2
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->token:Lorg/apache/tools/ant/taskdefs/Replace$NestedString;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Replace$NestedString;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_3

    .line 587
    :cond_6
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "The token attribute must not be an empty string."

    .line 589
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Replace;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    :cond_7
    :goto_3
    return-void
.end method

.method public validateReplacefilters()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 601
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace;->replacefilters:Ljava/util/List;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/Replace$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/Replace$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
