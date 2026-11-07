.class public Lorg/apache/tools/ant/types/resources/comparators/FileSystem;
.super Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;
.source "FileSystem.java"


# static fields
.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;


# direct methods
.method public static synthetic $r8$lambda$qb5LmhsTH7lXZ2b_YonFiJC4_cU(Ljava/io/File;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 34
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/types/resources/comparators/FileSystem;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/comparators/ResourceComparator;-><init>()V

    return-void
.end method

.method private compare(Ljava/io/File;Ljava/io/File;)I
    .locals 3

    .line 57
    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 60
    :cond_0
    sget-object v0, Lorg/apache/tools/ant/types/resources/comparators/FileSystem;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/util/FileUtils;->isLeadingPath(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, -0x1

    return p1

    .line 63
    :cond_1
    invoke-virtual {v0, p2, p1}, Lorg/apache/tools/ant/util/FileUtils;->isLeadingPath(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p1, 0x1

    return p1

    .line 66
    :cond_2
    new-instance v1, Lorg/apache/tools/ant/types/resources/comparators/FileSystem$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/apache/tools/ant/types/resources/comparators/FileSystem$$ExternalSyntheticLambda0;-><init>()V

    .line 68
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/apache/tools/ant/types/resources/comparators/FileSystem$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lorg/apache/tools/ant/types/resources/comparators/FileSystem$$ExternalSyntheticLambda1;-><init>(Lorg/apache/tools/ant/util/FileUtils;)V

    invoke-interface {v1, v2}, Ljava/util/function/Function;->andThen(Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object v0

    .line 67
    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    .line 69
    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method private file(Lorg/apache/tools/ant/types/Resource;)Ljava/io/File;
    .locals 2

    .line 50
    const-class v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/Resource;->asOptional(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/types/resources/comparators/FileSystem$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lorg/apache/tools/ant/types/resources/comparators/FileSystem$$ExternalSyntheticLambda2;-><init>(Lorg/apache/tools/ant/types/Resource;)V

    .line 51
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/tools/ant/types/resources/FileProvider;

    .line 53
    invoke-interface {p1}, Lorg/apache/tools/ant/types/resources/FileProvider;->getFile()Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method static synthetic lambda$file$0(Lorg/apache/tools/ant/types/Resource;)Ljava/lang/ClassCastException;
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " doesn\'t provide files"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected resourceCompare(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;)I
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/resources/comparators/FileSystem;->file(Lorg/apache/tools/ant/types/Resource;)Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p2}, Lorg/apache/tools/ant/types/resources/comparators/FileSystem;->file(Lorg/apache/tools/ant/types/Resource;)Ljava/io/File;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/tools/ant/types/resources/comparators/FileSystem;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result p1

    return p1
.end method
