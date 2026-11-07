.class public Lorg/apache/tools/ant/taskdefs/Copy;
.super Lorg/apache/tools/ant/Task;
.source "Copy.java"


# static fields
.field static final LINE_SEPARATOR:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final MSG_WHEN_COPYING_EMPTY_RC_TO_FILE:Ljava/lang/String; = "Cannot perform operation from directory to file."

.field static final NULL_FILE_PLACEHOLDER:Ljava/io/File;


# instance fields
.field protected completeDirMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field protected destDir:Ljava/io/File;

.field protected destFile:Ljava/io/File;

.field protected dirCopyMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private enableMultipleMappings:Z

.field protected failonerror:Z

.field protected file:Ljava/io/File;

.field protected fileCopyMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected fileUtils:Lorg/apache/tools/ant/util/FileUtils;

.field protected filesets:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lorg/apache/tools/ant/types/ResourceCollection;",
            ">;"
        }
    .end annotation
.end field

.field private final filterChains:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lorg/apache/tools/ant/types/FilterChain;",
            ">;"
        }
    .end annotation
.end field

.field private final filterSets:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lorg/apache/tools/ant/types/FilterSet;",
            ">;"
        }
    .end annotation
.end field

.field protected filtering:Z

.field protected flatten:Z

.field private force:Z

.field protected forceOverwrite:Z

.field private granularity:J

.field protected includeEmpty:Z

.field private inputEncoding:Ljava/lang/String;

.field protected mapperElement:Lorg/apache/tools/ant/types/Mapper;

.field private outputEncoding:Ljava/lang/String;

.field protected preserveLastModified:Z

.field private quiet:Z

.field protected rcs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lorg/apache/tools/ant/types/ResourceCollection;",
            ">;"
        }
    .end annotation
.end field

.field private singleResource:Lorg/apache/tools/ant/types/Resource;

.field protected verbosity:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 75
    sget-object v0, Lorg/apache/tools/ant/util/StringUtils;->LINE_SEP:Ljava/lang/String;

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Copy;->LINE_SEPARATOR:Ljava/lang/String;

    .line 76
    new-instance v0, Ljava/io/File;

    const-string v1, "/NULL_FILE"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Copy;->NULL_FILE_PLACEHOLDER:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 116
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->file:Ljava/io/File;

    .line 79
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->destFile:Ljava/io/File;

    .line 80
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->destDir:Ljava/io/File;

    .line 81
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Copy;->rcs:Ljava/util/Vector;

    .line 83
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Copy;->filesets:Ljava/util/Vector;

    const/4 v1, 0x0

    .line 85
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Copy;->enableMultipleMappings:Z

    .line 86
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Copy;->filtering:Z

    .line 87
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Copy;->preserveLastModified:Z

    .line 88
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Copy;->forceOverwrite:Z

    .line 89
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Copy;->flatten:Z

    const/4 v2, 0x3

    .line 90
    iput v2, p0, Lorg/apache/tools/ant/taskdefs/Copy;->verbosity:I

    const/4 v2, 0x1

    .line 91
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Copy;->includeEmpty:Z

    .line 92
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Copy;->failonerror:Z

    .line 94
    new-instance v2, Lorg/apache/tools/ant/util/LinkedHashtable;

    invoke-direct {v2}, Lorg/apache/tools/ant/util/LinkedHashtable;-><init>()V

    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Copy;->fileCopyMap:Ljava/util/Hashtable;

    .line 95
    new-instance v2, Lorg/apache/tools/ant/util/LinkedHashtable;

    invoke-direct {v2}, Lorg/apache/tools/ant/util/LinkedHashtable;-><init>()V

    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Copy;->dirCopyMap:Ljava/util/Hashtable;

    .line 96
    new-instance v2, Lorg/apache/tools/ant/util/LinkedHashtable;

    invoke-direct {v2}, Lorg/apache/tools/ant/util/LinkedHashtable;-><init>()V

    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Copy;->completeDirMap:Ljava/util/Hashtable;

    .line 98
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    .line 101
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Copy;->filterChains:Ljava/util/Vector;

    .line 102
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Copy;->filterSets:Ljava/util/Vector;

    .line 103
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->inputEncoding:Ljava/lang/String;

    .line 104
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->outputEncoding:Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 105
    iput-wide v2, p0, Lorg/apache/tools/ant/taskdefs/Copy;->granularity:J

    .line 106
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Copy;->force:Z

    .line 107
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Copy;->quiet:Z

    .line 111
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->singleResource:Lorg/apache/tools/ant/types/Resource;

    .line 117
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->fileUtils:Lorg/apache/tools/ant/util/FileUtils;

    .line 118
    invoke-virtual {v0}, Lorg/apache/tools/ant/util/FileUtils;->getFileTimestampGranularity()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->granularity:J

    return-void
.end method

.method private static add(Ljava/io/File;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1028
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/Copy;->add(Ljava/io/File;[Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private static add(Ljava/io/File;[Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1016
    invoke-static {p0}, Lorg/apache/tools/ant/taskdefs/Copy;->getKeyFile(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    .line 1017
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Copy$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/taskdefs/Copy$$ExternalSyntheticLambda1;-><init>([Ljava/lang/String;)V

    invoke-interface {p2, p0, v0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 1018
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method private copySingleFile()V
    .locals 4

    .line 621
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->file:Ljava/io/File;

    if-eqz v0, :cond_5

    .line 622
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 623
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->destFile:Ljava/io/File;

    if-nez v0, :cond_0

    .line 624
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Copy;->destDir:Ljava/io/File;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Copy;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->destFile:Ljava/io/File;

    .line 626
    :cond_0
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->forceOverwrite:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->destFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->file:Ljava/io/File;

    .line 627
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/tools/ant/taskdefs/Copy;->granularity:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Copy;->destFile:Ljava/io/File;

    .line 628
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    goto :goto_0

    .line 632
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Copy;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " omitted as "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Copy;->destFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is up to date."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Copy;->log(Ljava/lang/String;I)V

    goto :goto_1

    .line 629
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->fileCopyMap:Ljava/util/Hashtable;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Copy;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Copy;->destFile:Ljava/io/File;

    .line 630
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 629
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 636
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Warning: Could not find file "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Copy;->file:Ljava/io/File;

    .line 637
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to copy."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 638
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Copy;->failonerror:Z

    if-nez v1, :cond_4

    .line 639
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Copy;->quiet:Z

    if-nez v1, :cond_5

    const/4 v1, 0x0

    .line 640
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Copy;->log(Ljava/lang/String;I)V

    goto :goto_1

    .line 643
    :cond_4
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_1
    return-void
.end method

.method private getDueTo(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 5

    .line 1073
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/io/IOException;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 1074
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_1

    .line 1075
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 1076
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1078
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    if-nez v0, :cond_3

    const-string v0, " "

    .line 1080
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1082
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1084
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MalformedInput"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    new-array p1, v2, [Ljava/lang/Object;

    .line 1088
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->inputEncoding:Ljava/lang/String;

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->fileUtils:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/FileUtils;->getDefaultEncoding()Ljava/lang/String;

    move-result-object v0

    :cond_5
    aput-object v0, p1, v3

    const-string v0, "%nThis is normally due to the input file containing invalid%nbytes for the character encoding used : %s%n"

    .line 1085
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1090
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static getKeyFile(Ljava/io/File;)Ljava/io/File;
    .locals 0

    if-nez p0, :cond_0

    .line 1036
    sget-object p0, Lorg/apache/tools/ant/taskdefs/Copy;->NULL_FILE_PLACEHOLDER:Ljava/io/File;

    :cond_0
    return-object p0
.end method

.method private getMapper()Lorg/apache/tools/ant/util/FileNameMapper;
    .locals 1

    .line 1045
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    if-eqz v0, :cond_0

    .line 1046
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Mapper;->getImplementation()Lorg/apache/tools/ant/util/FileNameMapper;

    move-result-object v0

    goto :goto_0

    .line 1047
    :cond_0
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->flatten:Z

    if-eqz v0, :cond_1

    .line 1048
    new-instance v0, Lorg/apache/tools/ant/util/FlatFileNameMapper;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/FlatFileNameMapper;-><init>()V

    goto :goto_0

    .line 1050
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/util/IdentityMapper;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/IdentityMapper;-><init>()V

    :goto_0
    return-object v0
.end method

.method private getMessage(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 1

    .line 1062
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private iterateOverBaseDirs(Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/io/File;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 653
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 654
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 655
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 659
    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, [Ljava/lang/String;

    :cond_0
    new-array v1, v3, [Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 663
    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 665
    :cond_1
    sget-object v2, Lorg/apache/tools/ant/taskdefs/Copy;->NULL_FILE_PLACEHOLDER:Ljava/io/File;

    if-ne v0, v2, :cond_2

    const/4 v0, 0x0

    :cond_2
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Copy;->destDir:Ljava/io/File;

    invoke-virtual {p0, v0, v2, v4, v1}, Lorg/apache/tools/ant/taskdefs/Copy;->scan(Ljava/io/File;Ljava/io/File;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method static synthetic lambda$add$1([Ljava/lang/String;Ljava/io/File;)Ljava/util/List;
    .locals 0

    .line 1017
    new-instance p1, Ljava/util/ArrayList;

    array-length p0, p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(I)V

    return-object p1
.end method

.method static synthetic lambda$buildMap$0(Ljava/io/File;Ljava/lang/String;)Lorg/apache/tools/ant/types/Resource;
    .locals 1

    .line 830
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResource;

    invoke-direct {v0, p0, p1}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .locals 1

    .line 351
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->rcs:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public add(Lorg/apache/tools/ant/util/FileNameMapper;)V
    .locals 1

    .line 374
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Copy;->createMapper()Lorg/apache/tools/ant/types/Mapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Mapper;->add(Lorg/apache/tools/ant/util/FileNameMapper;)V

    return-void
.end method

.method public addFileset(Lorg/apache/tools/ant/types/FileSet;)V
    .locals 0

    .line 342
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Copy;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    return-void
.end method

.method protected buildMap([Lorg/apache/tools/ant/types/Resource;Ljava/io/File;Lorg/apache/tools/ant/util/FileNameMapper;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/tools/ant/types/Resource;",
            "Ljava/io/File;",
            "Lorg/apache/tools/ant/util/FileNameMapper;",
            ")",
            "Ljava/util/Map<",
            "Lorg/apache/tools/ant/types/Resource;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 818
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 820
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Copy;->forceOverwrite:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 821
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 822
    array-length v3, p1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, p1, v4

    .line 823
    invoke-virtual {v5}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p3, v6}, Lorg/apache/tools/ant/util/FileNameMapper;->mapFileName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 824
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-array p1, v2, [Lorg/apache/tools/ant/types/Resource;

    .line 827
    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/tools/ant/types/Resource;

    goto :goto_1

    .line 829
    :cond_2
    new-instance v6, Lorg/apache/tools/ant/taskdefs/Copy$$ExternalSyntheticLambda0;

    invoke-direct {v6, p2}, Lorg/apache/tools/ant/taskdefs/Copy$$ExternalSyntheticLambda0;-><init>(Ljava/io/File;)V

    iget-wide v7, p0, Lorg/apache/tools/ant/taskdefs/Copy;->granularity:J

    move-object v3, p0

    move-object v4, p1

    move-object v5, p3

    invoke-static/range {v3 .. v8}, Lorg/apache/tools/ant/util/ResourceUtils;->selectOutOfDateSources(Lorg/apache/tools/ant/ProjectComponent;[Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/util/FileNameMapper;Lorg/apache/tools/ant/types/ResourceFactory;J)[Lorg/apache/tools/ant/types/Resource;

    move-result-object p1

    .line 832
    :goto_1
    array-length v1, p1

    move v3, v2

    :goto_2
    if-ge v3, v1, :cond_6

    aget-object v4, p1, v3

    .line 833
    invoke-virtual {v4}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p3, v5}, Lorg/apache/tools/ant/util/FileNameMapper;->mapFileName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 834
    array-length v6, v5

    if-eqz v6, :cond_5

    .line 839
    iget-boolean v6, p0, Lorg/apache/tools/ant/taskdefs/Copy;->enableMultipleMappings:Z

    if-nez v6, :cond_3

    .line 840
    new-instance v6, Ljava/io/File;

    aget-object v5, v5, v2

    invoke-direct {v6, p2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_3
    move v6, v2

    .line 843
    :goto_3
    array-length v7, v5

    if-ge v6, v7, :cond_4

    .line 844
    new-instance v7, Ljava/io/File;

    aget-object v8, v5, v6

    invoke-direct {v7, p2, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 846
    :cond_4
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 835
    :cond_5
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string p2, "Can\'t copy a resource without a name if the mapper doesn\'t provide one."

    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    return-object v0
.end method

.method protected buildMap(Ljava/io/File;Ljava/io/File;[Ljava/lang/String;Lorg/apache/tools/ant/util/FileNameMapper;Ljava/util/Hashtable;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "[",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/util/FileNameMapper;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 775
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->forceOverwrite:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 776
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 777
    array-length v2, p3

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p3, v3

    .line 778
    invoke-interface {p4, v4}, Lorg/apache/tools/ant/util/FileNameMapper;->mapFileName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 779
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-array p3, v1, [Ljava/lang/String;

    .line 782
    invoke-interface {v0, p3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    goto :goto_1

    .line 784
    :cond_2
    new-instance v2, Lorg/apache/tools/ant/util/SourceFileScanner;

    invoke-direct {v2, p0}, Lorg/apache/tools/ant/util/SourceFileScanner;-><init>(Lorg/apache/tools/ant/Task;)V

    .line 785
    iget-wide v7, p0, Lorg/apache/tools/ant/taskdefs/Copy;->granularity:J

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p4

    invoke-virtual/range {v2 .. v8}, Lorg/apache/tools/ant/util/SourceFileScanner;->restrict([Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/apache/tools/ant/util/FileNameMapper;J)[Ljava/lang/String;

    move-result-object p3

    .line 787
    :goto_1
    array-length v0, p3

    move v2, v1

    :goto_2
    if-ge v2, v0, :cond_7

    aget-object v3, p3, v2

    .line 788
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 789
    invoke-interface {p4, v3}, Lorg/apache/tools/ant/util/FileNameMapper;->mapFileName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 790
    array-length v5, v3

    if-nez v5, :cond_3

    goto :goto_4

    .line 794
    :cond_3
    iget-boolean v5, p0, Lorg/apache/tools/ant/taskdefs/Copy;->enableMultipleMappings:Z

    if-nez v5, :cond_4

    .line 795
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    aget-object v3, v3, v1

    invoke-direct {v5, p2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 796
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 795
    invoke-virtual {p5, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_4
    move v5, v1

    .line 799
    :goto_3
    array-length v6, v3

    if-ge v5, v6, :cond_5

    .line 800
    new-instance v6, Ljava/io/File;

    aget-object v7, v3, v5

    invoke-direct {v6, p2, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 802
    :cond_5
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p5, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method

.method public createFilterChain()Lorg/apache/tools/ant/types/FilterChain;
    .locals 2

    .line 158
    new-instance v0, Lorg/apache/tools/ant/types/FilterChain;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/FilterChain;-><init>()V

    .line 159
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Copy;->filterChains:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object v0
.end method

.method public createFilterSet()Lorg/apache/tools/ant/types/FilterSet;
    .locals 2

    .line 168
    new-instance v0, Lorg/apache/tools/ant/types/FilterSet;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/FilterSet;-><init>()V

    .line 169
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Copy;->filterSets:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object v0
.end method

.method public createMapper()Lorg/apache/tools/ant/types/Mapper;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 360
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    if-nez v0, :cond_0

    .line 364
    new-instance v0, Lorg/apache/tools/ant/types/Mapper;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Copy;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Mapper;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    return-object v0

    .line 361
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Cannot define more than one mapper"

    .line 362
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Copy;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method protected doFileOperations()V
    .locals 27

    move-object/from16 v1, p0

    .line 857
    iget-object v0, v1, Lorg/apache/tools/ant/taskdefs/Copy;->fileCopyMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    const-string v2, " to "

    const/4 v4, 0x1

    if-nez v0, :cond_7

    .line 858
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Copying "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lorg/apache/tools/ant/taskdefs/Copy;->fileCopyMap:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->size()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " file"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 859
    iget-object v6, v1, Lorg/apache/tools/ant/taskdefs/Copy;->fileCopyMap:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->size()I

    move-result v6

    if-ne v6, v4, :cond_0

    const-string v6, ""

    goto :goto_0

    :cond_0
    const-string v6, "s"

    :goto_0
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, v1, Lorg/apache/tools/ant/taskdefs/Copy;->destDir:Ljava/io/File;

    .line 860
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 858
    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/Copy;->log(Ljava/lang/String;)V

    .line 862
    iget-object v0, v1, Lorg/apache/tools/ant/taskdefs/Copy;->fileCopyMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 863
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 865
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, [Ljava/lang/String;

    array-length v9, v8

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v9, :cond_1

    aget-object v11, v8, v10

    .line 866
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 867
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v11, "Skipping self-copy of "

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v11, v1, Lorg/apache/tools/ant/taskdefs/Copy;->verbosity:I

    invoke-virtual {v1, v0, v11}, Lorg/apache/tools/ant/taskdefs/Copy;->log(Ljava/lang/String;I)V

    move-object/from16 v25, v5

    move-object/from16 v26, v6

    goto/16 :goto_5

    .line 871
    :cond_2
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v12, v1, Lorg/apache/tools/ant/taskdefs/Copy;->verbosity:I

    invoke-virtual {v1, v0, v12}, Lorg/apache/tools/ant/taskdefs/Copy;->log(Ljava/lang/String;I)V

    .line 873
    new-instance v0, Lorg/apache/tools/ant/types/FilterSetCollection;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/FilterSetCollection;-><init>()V

    .line 875
    iget-boolean v12, v1, Lorg/apache/tools/ant/taskdefs/Copy;->filtering:Z

    if-eqz v12, :cond_3

    .line 877
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/Copy;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v12

    invoke-virtual {v12}, Lorg/apache/tools/ant/Project;->getGlobalFilterSet()Lorg/apache/tools/ant/types/FilterSet;

    move-result-object v12

    invoke-virtual {v0, v12}, Lorg/apache/tools/ant/types/FilterSetCollection;->addFilterSet(Lorg/apache/tools/ant/types/FilterSet;)V

    .line 879
    :cond_3
    iget-object v12, v1, Lorg/apache/tools/ant/taskdefs/Copy;->filterSets:Ljava/util/Vector;

    invoke-virtual {v12}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/tools/ant/types/FilterSet;

    .line 880
    invoke-virtual {v0, v13}, Lorg/apache/tools/ant/types/FilterSetCollection;->addFilterSet(Lorg/apache/tools/ant/types/FilterSet;)V

    goto :goto_2

    .line 882
    :cond_4
    iget-object v13, v1, Lorg/apache/tools/ant/taskdefs/Copy;->fileUtils:Lorg/apache/tools/ant/util/FileUtils;

    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v12, v1, Lorg/apache/tools/ant/taskdefs/Copy;->filterChains:Ljava/util/Vector;

    iget-boolean v4, v1, Lorg/apache/tools/ant/taskdefs/Copy;->forceOverwrite:Z

    iget-boolean v3, v1, Lorg/apache/tools/ant/taskdefs/Copy;->preserveLastModified:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/16 v20, 0x0

    move-object/from16 v25, v5

    :try_start_1
    iget-object v5, v1, Lorg/apache/tools/ant/taskdefs/Copy;->inputEncoding:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v26, v6

    :try_start_2
    iget-object v6, v1, Lorg/apache/tools/ant/taskdefs/Copy;->outputEncoding:Ljava/lang/String;

    .line 887
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/Copy;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v23

    .line 888
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/Copy;->getForce()Z

    move-result v24

    move-object/from16 v16, v0

    move-object/from16 v17, v12

    move/from16 v18, v4

    move/from16 v19, v3

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    .line 882
    invoke-virtual/range {v13 .. v24}, Lorg/apache/tools/ant/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;Lorg/apache/tools/ant/types/FilterSetCollection;Ljava/util/Vector;ZZZLjava/lang/String;Ljava/lang/String;Lorg/apache/tools/ant/Project;Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object/from16 v25, v5

    :goto_3
    move-object/from16 v26, v6

    .line 890
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to copy "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " due to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 891
    invoke-direct {v1, v0}, Lorg/apache/tools/ant/taskdefs/Copy;->getDueTo(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 892
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 893
    instance-of v5, v0, Lorg/apache/tools/ant/util/ResourceUtils$ReadOnlyTargetFileException;

    if-nez v5, :cond_5

    .line 895
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_5

    .line 896
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and I couldn\'t delete the corrupt "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 898
    :cond_5
    iget-boolean v4, v1, Lorg/apache/tools/ant/taskdefs/Copy;->failonerror:Z

    if-nez v4, :cond_6

    const/4 v4, 0x0

    .line 901
    invoke-virtual {v1, v3, v4}, Lorg/apache/tools/ant/taskdefs/Copy;->log(Ljava/lang/String;I)V

    :goto_5
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v5, v25

    move-object/from16 v6, v26

    const/4 v4, 0x1

    goto/16 :goto_1

    .line 899
    :cond_6
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/Copy;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v4

    invoke-direct {v2, v3, v0, v4}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v2

    .line 906
    :cond_7
    iget-boolean v0, v1, Lorg/apache/tools/ant/taskdefs/Copy;->includeEmpty:Z

    if-eqz v0, :cond_e

    .line 908
    iget-object v0, v1, Lorg/apache/tools/ant/taskdefs/Copy;->dirCopyMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 909
    array-length v5, v3

    move v6, v4

    const/4 v4, 0x0

    :goto_7
    if-ge v4, v5, :cond_a

    aget-object v7, v3, v4

    .line 910
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 911
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_9

    .line 912
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_8

    .line 913
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "Unable to create directory "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 914
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 913
    invoke-virtual {v1, v7, v8}, Lorg/apache/tools/ant/taskdefs/Copy;->log(Ljava/lang/String;I)V

    goto :goto_8

    :cond_8
    const/4 v8, 0x0

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_9
    const/4 v8, 0x0

    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_a
    move v4, v6

    goto :goto_6

    :cond_b
    if-lez v4, :cond_e

    .line 922
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Copied "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lorg/apache/tools/ant/taskdefs/Copy;->dirCopyMap:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " empty director"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 924
    iget-object v5, v1, Lorg/apache/tools/ant/taskdefs/Copy;->dirCopyMap:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->size()I

    move-result v5

    const-string v6, "y"

    const-string v7, "ies"

    const/4 v8, 0x1

    if-ne v5, v8, :cond_c

    move-object v5, v6

    goto :goto_9

    :cond_c
    move-object v5, v7

    :goto_9
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-ne v4, v8, :cond_d

    goto :goto_a

    :cond_d
    move-object v6, v7

    .line 927
    :goto_a
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " under "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lorg/apache/tools/ant/taskdefs/Copy;->destDir:Ljava/io/File;

    .line 928
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 922
    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/Copy;->log(Ljava/lang/String;)V

    :cond_e
    return-void
.end method

.method protected doResourceOperations(Ljava/util/Map;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/apache/tools/ant/types/Resource;",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 940
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 941
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Copying "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " resource"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 942
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const-string v3, ""

    goto :goto_0

    :cond_0
    const-string v3, "s"

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v1, Lorg/apache/tools/ant/taskdefs/Copy;->destDir:Ljava/io/File;

    .line 943
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 941
    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/Copy;->log(Ljava/lang/String;)V

    .line 945
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 946
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/tools/ant/types/Resource;

    .line 947
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, [Ljava/lang/String;

    array-length v14, v15

    const/4 v13, 0x0

    move v12, v13

    :goto_1
    if-ge v12, v14, :cond_1

    aget-object v11, v15, v12

    .line 949
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v6, v1, Lorg/apache/tools/ant/taskdefs/Copy;->verbosity:I

    invoke-virtual {v1, v0, v6}, Lorg/apache/tools/ant/taskdefs/Copy;->log(Ljava/lang/String;I)V

    .line 952
    new-instance v8, Lorg/apache/tools/ant/types/FilterSetCollection;

    invoke-direct {v8}, Lorg/apache/tools/ant/types/FilterSetCollection;-><init>()V

    .line 953
    iget-boolean v0, v1, Lorg/apache/tools/ant/taskdefs/Copy;->filtering:Z

    if-eqz v0, :cond_2

    .line 955
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/Copy;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->getGlobalFilterSet()Lorg/apache/tools/ant/types/FilterSet;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/apache/tools/ant/types/FilterSetCollection;->addFilterSet(Lorg/apache/tools/ant/types/FilterSet;)V

    .line 957
    :cond_2
    iget-object v0, v1, Lorg/apache/tools/ant/taskdefs/Copy;->filterSets:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/tools/ant/types/FilterSet;

    .line 958
    invoke-virtual {v8, v6}, Lorg/apache/tools/ant/types/FilterSetCollection;->addFilterSet(Lorg/apache/tools/ant/types/FilterSet;)V

    goto :goto_2

    .line 960
    :cond_3
    new-instance v7, Lorg/apache/tools/ant/types/resources/FileResource;

    iget-object v0, v1, Lorg/apache/tools/ant/taskdefs/Copy;->destDir:Ljava/io/File;

    invoke-direct {v7, v0, v11}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v9, v1, Lorg/apache/tools/ant/taskdefs/Copy;->filterChains:Ljava/util/Vector;

    iget-boolean v10, v1, Lorg/apache/tools/ant/taskdefs/Copy;->forceOverwrite:Z

    iget-boolean v0, v1, Lorg/apache/tools/ant/taskdefs/Copy;->preserveLastModified:Z

    const/16 v16, 0x0

    iget-object v6, v1, Lorg/apache/tools/ant/taskdefs/Copy;->inputEncoding:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move/from16 p1, v12

    :try_start_1
    iget-object v12, v1, Lorg/apache/tools/ant/taskdefs/Copy;->outputEncoding:Ljava/lang/String;

    .line 970
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/Copy;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v17

    .line 971
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/Copy;->getForce()Z

    move-result v18
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v19, v6

    move-object v6, v5

    move-object/from16 v20, v2

    move-object v2, v11

    move v11, v0

    move/from16 v21, p1

    move-object v0, v12

    move/from16 v12, v16

    move-object/from16 v13, v19

    move/from16 v19, v14

    move-object v14, v0

    move-object/from16 v22, v15

    move-object/from16 v15, v17

    move/from16 v16, v18

    .line 960
    :try_start_2
    invoke-static/range {v6 .. v16}, Lorg/apache/tools/ant/util/ResourceUtils;->copyResource(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/FilterSetCollection;Ljava/util/Vector;ZZZLjava/lang/String;Ljava/lang/String;Lorg/apache/tools/ant/Project;Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v2, 0x0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move/from16 v21, p1

    move-object/from16 v20, v2

    move-object v2, v11

    goto :goto_3

    :catch_2
    move-exception v0

    move-object/from16 v20, v2

    move-object v2, v11

    move/from16 v21, v12

    :goto_3
    move/from16 v19, v14

    move-object/from16 v22, v15

    .line 973
    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Failed to copy "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " due to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 975
    invoke-direct {v1, v0}, Lorg/apache/tools/ant/taskdefs/Copy;->getDueTo(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 976
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 977
    instance-of v8, v0, Lorg/apache/tools/ant/util/ResourceUtils$ReadOnlyTargetFileException;

    if-nez v8, :cond_4

    .line 979
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_4

    .line 980
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " and I couldn\'t delete the corrupt "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 982
    :cond_4
    iget-boolean v2, v1, Lorg/apache/tools/ant/taskdefs/Copy;->failonerror:Z

    if-nez v2, :cond_5

    const/4 v2, 0x0

    .line 985
    invoke-virtual {v1, v6, v2}, Lorg/apache/tools/ant/taskdefs/Copy;->log(Ljava/lang/String;I)V

    :goto_5
    add-int/lit8 v12, v21, 0x1

    move v13, v2

    move/from16 v14, v19

    move-object/from16 v2, v20

    move-object/from16 v15, v22

    goto/16 :goto_1

    .line 983
    :cond_5
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/Copy;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v2, v6, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v2

    :cond_6
    return-void
.end method

.method public execute()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "Warning: "

    .line 438
    iget-object v3, v1, Lorg/apache/tools/ant/taskdefs/Copy;->file:Ljava/io/File;

    .line 439
    iget-object v4, v1, Lorg/apache/tools/ant/taskdefs/Copy;->destFile:Ljava/io/File;

    .line 440
    iget-object v5, v1, Lorg/apache/tools/ant/taskdefs/Copy;->destDir:Ljava/io/File;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v3, :cond_0

    if-eqz v4, :cond_0

    .line 442
    iget-object v0, v1, Lorg/apache/tools/ant/taskdefs/Copy;->rcs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 444
    iget-object v0, v1, Lorg/apache/tools/ant/taskdefs/Copy;->rcs:Ljava/util/Vector;

    invoke-virtual {v0, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/ResourceCollection;

    move-object v9, v0

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    .line 450
    :goto_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/Copy;->validateAttributes()V
    :try_end_0
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/Copy;->copySingleFile()V

    .line 482
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 483
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 484
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 485
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 487
    iget-object v0, v1, Lorg/apache/tools/ant/taskdefs/Copy;->rcs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/ResourceCollection;

    .line 490
    instance-of v15, v0, Lorg/apache/tools/ant/types/FileSet;

    if-eqz v15, :cond_4

    invoke-interface {v0}, Lorg/apache/tools/ant/types/ResourceCollection;->isFilesystemOnly()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 491
    check-cast v0, Lorg/apache/tools/ant/types/FileSet;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 494
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/Copy;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v15

    invoke-virtual {v0, v15}, Lorg/apache/tools/ant/types/FileSet;->getDirectoryScanner(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v15
    :try_end_2
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 506
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/Copy;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/apache/tools/ant/types/FileSet;->getDir(Lorg/apache/tools/ant/Project;)Ljava/io/File;

    move-result-object v8

    .line 508
    iget-boolean v6, v1, Lorg/apache/tools/ant/taskdefs/Copy;->flatten:Z

    if-nez v6, :cond_1

    iget-object v6, v1, Lorg/apache/tools/ant/taskdefs/Copy;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    if-nez v6, :cond_1

    .line 509
    invoke-virtual {v15}, Lorg/apache/tools/ant/DirectoryScanner;->isEverythingIncluded()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/FileSet;->hasPatterns()Z

    move-result v0

    if-nez v0, :cond_1

    .line 510
    iget-object v0, v1, Lorg/apache/tools/ant/taskdefs/Copy;->completeDirMap:Ljava/util/Hashtable;

    iget-object v6, v1, Lorg/apache/tools/ant/taskdefs/Copy;->destDir:Ljava/io/File;

    invoke-virtual {v0, v8, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    :cond_1
    invoke-virtual {v15}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0, v10}, Lorg/apache/tools/ant/taskdefs/Copy;->add(Ljava/io/File;[Ljava/lang/String;Ljava/util/Map;)V

    .line 513
    invoke-virtual {v15}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedDirectories()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0, v11}, Lorg/apache/tools/ant/taskdefs/Copy;->add(Ljava/io/File;[Ljava/lang/String;Ljava/util/Map;)V

    .line 514
    invoke-interface {v12, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :catch_0
    move-exception v0

    .line 496
    iget-boolean v6, v1, Lorg/apache/tools/ant/taskdefs/Copy;->failonerror:Z

    if-nez v6, :cond_3

    .line 497
    invoke-direct {v1, v0}, Lorg/apache/tools/ant/taskdefs/Copy;->getMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v6

    const-string v8, " does not exist."

    invoke-virtual {v6, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 501
    iget-boolean v6, v1, Lorg/apache/tools/ant/taskdefs/Copy;->quiet:Z

    if-nez v6, :cond_2

    .line 502
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/taskdefs/Copy;->getMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v7}, Lorg/apache/tools/ant/taskdefs/Copy;->log(Ljava/lang/String;I)V

    :cond_2
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 499
    :cond_3
    throw v0

    .line 517
    :cond_4
    invoke-interface {v0}, Lorg/apache/tools/ant/types/ResourceCollection;->isFilesystemOnly()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/Copy;->supportsNonFileResources()Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_2

    .line 518
    :cond_5
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Only FileSystem resources are supported."

    invoke-direct {v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 522
    :cond_6
    :goto_2
    invoke-interface {v0}, Lorg/apache/tools/ant/types/ResourceCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/tools/ant/types/Resource;

    .line 523
    invoke-virtual {v6}, Lorg/apache/tools/ant/types/Resource;->isExists()Z

    move-result v8

    if-nez v8, :cond_9

    .line 524
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Warning: Could not find resource "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 525
    invoke-virtual {v6}, Lorg/apache/tools/ant/types/Resource;->toLongString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " to copy."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 526
    iget-boolean v8, v1, Lorg/apache/tools/ant/taskdefs/Copy;->failonerror:Z

    if-nez v8, :cond_8

    .line 527
    iget-boolean v8, v1, Lorg/apache/tools/ant/taskdefs/Copy;->quiet:Z

    if-nez v8, :cond_7

    .line 528
    invoke-virtual {v1, v6, v7}, Lorg/apache/tools/ant/taskdefs/Copy;->log(Ljava/lang/String;I)V

    goto :goto_3

    .line 531
    :cond_8
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, v6}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 536
    :cond_9
    sget-object v8, Lorg/apache/tools/ant/taskdefs/Copy;->NULL_FILE_PLACEHOLDER:Ljava/io/File;

    .line 537
    invoke-virtual {v6}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v15

    .line 538
    const-class v7, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {v6, v7}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/tools/ant/types/resources/FileProvider;

    if-eqz v7, :cond_b

    .line 540
    invoke-static {v7}, Lorg/apache/tools/ant/util/ResourceUtils;->asFileResource(Lorg/apache/tools/ant/types/resources/FileProvider;)Lorg/apache/tools/ant/types/resources/FileResource;

    move-result-object v8

    .line 541
    invoke-virtual {v8}, Lorg/apache/tools/ant/types/resources/FileResource;->getBaseDir()Ljava/io/File;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lorg/apache/tools/ant/taskdefs/Copy;->getKeyFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v16

    .line 542
    invoke-virtual {v8}, Lorg/apache/tools/ant/types/resources/FileResource;->getBaseDir()Ljava/io/File;

    move-result-object v17

    if-nez v17, :cond_a

    .line 543
    invoke-virtual {v8}, Lorg/apache/tools/ant/types/resources/FileResource;->getFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    :cond_a
    move-object/from16 v8, v16

    .line 550
    :cond_b
    invoke-virtual {v6}, Lorg/apache/tools/ant/types/Resource;->isDirectory()Z

    move-result v16

    if-nez v16, :cond_d

    if-eqz v7, :cond_c

    goto :goto_4

    .line 557
    :cond_c
    invoke-interface {v13, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 552
    :cond_d
    :goto_4
    invoke-virtual {v6}, Lorg/apache/tools/ant/types/Resource;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_e

    move-object v6, v11

    goto :goto_5

    :cond_e
    move-object v6, v10

    .line 551
    :goto_5
    invoke-static {v8, v15, v6}, Lorg/apache/tools/ant/taskdefs/Copy;->add(Ljava/io/File;Ljava/lang/String;Ljava/util/Map;)V

    .line 554
    invoke-interface {v12, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_6
    const/4 v7, 0x0

    goto/16 :goto_3

    :cond_f
    :goto_7
    const/4 v6, 0x1

    const/4 v7, 0x0

    goto/16 :goto_1

    .line 563
    :cond_10
    invoke-direct {v1, v12, v11, v10}, Lorg/apache/tools/ant/taskdefs/Copy;->iterateOverBaseDirs(Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 567
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/Copy;->doFileOperations()V
    :try_end_4
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_8

    :catch_1
    move-exception v0

    move-object v6, v0

    .line 569
    :try_start_5
    iget-boolean v0, v1, Lorg/apache/tools/ant/taskdefs/Copy;->failonerror:Z

    if-nez v0, :cond_17

    .line 570
    iget-boolean v0, v1, Lorg/apache/tools/ant/taskdefs/Copy;->quiet:Z

    if-nez v0, :cond_11

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {v1, v6}, Lorg/apache/tools/ant/taskdefs/Copy;->getMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {v1, v0, v6}, Lorg/apache/tools/ant/taskdefs/Copy;->log(Ljava/lang/String;I)V

    .line 578
    :cond_11
    :goto_8
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, v1, Lorg/apache/tools/ant/taskdefs/Copy;->singleResource:Lorg/apache/tools/ant/types/Resource;

    if-eqz v0, :cond_12

    goto :goto_a

    :cond_12
    :goto_9
    const/4 v2, 0x0

    goto :goto_b

    :cond_13
    :goto_a
    const/4 v6, 0x0

    new-array v0, v6, [Lorg/apache/tools/ant/types/Resource;

    .line 580
    invoke-interface {v13, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/tools/ant/types/Resource;

    .line 582
    iget-object v6, v1, Lorg/apache/tools/ant/taskdefs/Copy;->destDir:Ljava/io/File;

    invoke-virtual {v1, v0, v6}, Lorg/apache/tools/ant/taskdefs/Copy;->scan([Lorg/apache/tools/ant/types/Resource;Ljava/io/File;)Ljava/util/Map;

    move-result-object v0

    .line 583
    iget-object v6, v1, Lorg/apache/tools/ant/taskdefs/Copy;->singleResource:Lorg/apache/tools/ant/types/Resource;

    if-eqz v6, :cond_14

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    .line 584
    iget-object v8, v1, Lorg/apache/tools/ant/taskdefs/Copy;->destFile:Ljava/io/File;

    .line 585
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    aput-object v8, v7, v10

    .line 584
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 588
    :cond_14
    :try_start_6
    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/Copy;->doResourceOperations(Ljava/util/Map;)V
    :try_end_6
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_9

    :catch_2
    move-exception v0

    move-object v6, v0

    .line 590
    :try_start_7
    iget-boolean v0, v1, Lorg/apache/tools/ant/taskdefs/Copy;->failonerror:Z

    if-nez v0, :cond_16

    .line 591
    iget-boolean v0, v1, Lorg/apache/tools/ant/taskdefs/Copy;->quiet:Z

    if-nez v0, :cond_12

    .line 592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {v1, v6}, Lorg/apache/tools/ant/taskdefs/Copy;->getMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/apache/tools/ant/taskdefs/Copy;->log(Ljava/lang/String;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_9

    .line 602
    :goto_b
    iput-object v2, v1, Lorg/apache/tools/ant/taskdefs/Copy;->singleResource:Lorg/apache/tools/ant/types/Resource;

    .line 603
    iput-object v3, v1, Lorg/apache/tools/ant/taskdefs/Copy;->file:Ljava/io/File;

    .line 604
    iput-object v4, v1, Lorg/apache/tools/ant/taskdefs/Copy;->destFile:Ljava/io/File;

    .line 605
    iput-object v5, v1, Lorg/apache/tools/ant/taskdefs/Copy;->destDir:Ljava/io/File;

    if-eqz v9, :cond_15

    .line 607
    iget-object v0, v1, Lorg/apache/tools/ant/taskdefs/Copy;->rcs:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v0, v9, v2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 609
    :cond_15
    iget-object v0, v1, Lorg/apache/tools/ant/taskdefs/Copy;->fileCopyMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 610
    iget-object v0, v1, Lorg/apache/tools/ant/taskdefs/Copy;->dirCopyMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 611
    iget-object v0, v1, Lorg/apache/tools/ant/taskdefs/Copy;->completeDirMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    return-void

    .line 595
    :cond_16
    :try_start_8
    throw v6

    .line 574
    :cond_17
    throw v6

    :catchall_0
    move-exception v0

    const/4 v2, 0x0

    goto :goto_c

    :catch_3
    move-exception v0

    move-object v6, v0

    .line 452
    iget-boolean v0, v1, Lorg/apache/tools/ant/taskdefs/Copy;->failonerror:Z

    if-nez v0, :cond_19

    .line 453
    invoke-direct {v1, v6}, Lorg/apache/tools/ant/taskdefs/Copy;->getMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "Cannot perform operation from directory to file."

    .line 454
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v6}, Lorg/apache/tools/ant/taskdefs/Copy;->getMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/apache/tools/ant/taskdefs/Copy;->log(Ljava/lang/String;I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const/4 v6, 0x0

    .line 602
    iput-object v6, v1, Lorg/apache/tools/ant/taskdefs/Copy;->singleResource:Lorg/apache/tools/ant/types/Resource;

    .line 603
    iput-object v3, v1, Lorg/apache/tools/ant/taskdefs/Copy;->file:Ljava/io/File;

    .line 604
    iput-object v4, v1, Lorg/apache/tools/ant/taskdefs/Copy;->destFile:Ljava/io/File;

    .line 605
    iput-object v5, v1, Lorg/apache/tools/ant/taskdefs/Copy;->destDir:Ljava/io/File;

    if-eqz v9, :cond_18

    .line 607
    iget-object v0, v1, Lorg/apache/tools/ant/taskdefs/Copy;->rcs:Ljava/util/Vector;

    invoke-virtual {v0, v9, v2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 609
    :cond_18
    iget-object v0, v1, Lorg/apache/tools/ant/taskdefs/Copy;->fileCopyMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 610
    iget-object v0, v1, Lorg/apache/tools/ant/taskdefs/Copy;->dirCopyMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 611
    iget-object v0, v1, Lorg/apache/tools/ant/taskdefs/Copy;->completeDirMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    return-void

    .line 455
    :cond_19
    :try_start_9
    throw v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 602
    :goto_c
    iput-object v2, v1, Lorg/apache/tools/ant/taskdefs/Copy;->singleResource:Lorg/apache/tools/ant/types/Resource;

    .line 603
    iput-object v3, v1, Lorg/apache/tools/ant/taskdefs/Copy;->file:Ljava/io/File;

    .line 604
    iput-object v4, v1, Lorg/apache/tools/ant/taskdefs/Copy;->destFile:Ljava/io/File;

    .line 605
    iput-object v5, v1, Lorg/apache/tools/ant/taskdefs/Copy;->destDir:Ljava/io/File;

    if-eqz v9, :cond_1a

    .line 607
    iget-object v2, v1, Lorg/apache/tools/ant/taskdefs/Copy;->rcs:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v2, v9, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 609
    :cond_1a
    iget-object v2, v1, Lorg/apache/tools/ant/taskdefs/Copy;->fileCopyMap:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 610
    iget-object v2, v1, Lorg/apache/tools/ant/taskdefs/Copy;->dirCopyMap:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 611
    iget-object v2, v1, Lorg/apache/tools/ant/taskdefs/Copy;->completeDirMap:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 612
    throw v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 396
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->inputEncoding:Ljava/lang/String;

    return-object v0
.end method

.method protected getFileUtils()Lorg/apache/tools/ant/util/FileUtils;
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->fileUtils:Lorg/apache/tools/ant/util/FileUtils;

    return-object v0
.end method

.method protected getFilterChains()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lorg/apache/tools/ant/types/FilterChain;",
            ">;"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->filterChains:Ljava/util/Vector;

    return-object v0
.end method

.method protected getFilterSets()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lorg/apache/tools/ant/types/FilterSet;",
            ">;"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->filterSets:Ljava/util/Vector;

    return-object v0
.end method

.method public getForce()Z
    .locals 1

    .line 260
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->force:Z

    return v0
.end method

.method public getOutputEncoding()Ljava/lang/String;
    .locals 1

    .line 416
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->outputEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getPreserveLastModified()Z
    .locals 1

    .line 202
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->preserveLastModified:Z

    return v0
.end method

.method public isEnableMultipleMapping()Z
    .locals 1

    .line 325
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->enableMultipleMappings:Z

    return v0
.end method

.method protected scan([Lorg/apache/tools/ant/types/Resource;Ljava/io/File;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/tools/ant/types/Resource;",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Map<",
            "Lorg/apache/tools/ant/types/Resource;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 760
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Copy;->getMapper()Lorg/apache/tools/ant/util/FileNameMapper;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/tools/ant/taskdefs/Copy;->buildMap([Lorg/apache/tools/ant/types/Resource;Ljava/io/File;Lorg/apache/tools/ant/util/FileNameMapper;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method protected scan(Ljava/io/File;Ljava/io/File;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7

    .line 739
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Copy;->getMapper()Lorg/apache/tools/ant/util/FileNameMapper;

    move-result-object v6

    .line 740
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/Copy;->fileCopyMap:Ljava/util/Hashtable;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v6

    invoke-virtual/range {v0 .. v5}, Lorg/apache/tools/ant/taskdefs/Copy;->buildMap(Ljava/io/File;Ljava/io/File;[Ljava/lang/String;Lorg/apache/tools/ant/util/FileNameMapper;Ljava/util/Hashtable;)V

    .line 742
    iget-boolean p3, p0, Lorg/apache/tools/ant/taskdefs/Copy;->includeEmpty:Z

    if-eqz p3, :cond_0

    .line 743
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/Copy;->dirCopyMap:Ljava/util/Hashtable;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, v6

    invoke-virtual/range {v0 .. v5}, Lorg/apache/tools/ant/taskdefs/Copy;->buildMap(Ljava/io/File;Ljava/io/File;[Ljava/lang/String;Lorg/apache/tools/ant/util/FileNameMapper;Ljava/util/Hashtable;)V

    :cond_0
    return-void
.end method

.method public setEnableMultipleMappings(Z)V
    .locals 0

    .line 317
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Copy;->enableMultipleMappings:Z

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 1

    .line 383
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Copy;->inputEncoding:Ljava/lang/String;

    .line 384
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->outputEncoding:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 385
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Copy;->outputEncoding:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setFailOnError(Z)V
    .locals 0

    .line 334
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Copy;->failonerror:Z

    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Copy;->file:Ljava/io/File;

    return-void
.end method

.method public setFiltering(Z)V
    .locals 0

    .line 228
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Copy;->filtering:Z

    return-void
.end method

.method public setFlatten(Z)V
    .locals 0

    .line 273
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Copy;->flatten:Z

    return-void
.end method

.method public setForce(Z)V
    .locals 0

    .line 250
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Copy;->force:Z

    return-void
.end method

.method public setGranularity(J)V
    .locals 0

    .line 429
    iput-wide p1, p0, Lorg/apache/tools/ant/taskdefs/Copy;->granularity:J

    return-void
.end method

.method public setIncludeEmptyDirs(Z)V
    .locals 0

    .line 290
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Copy;->includeEmpty:Z

    return-void
.end method

.method public setOutputEncoding(Ljava/lang/String;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Copy;->outputEncoding:Ljava/lang/String;

    return-void
.end method

.method public setOverwrite(Z)V
    .locals 0

    .line 238
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Copy;->forceOverwrite:Z

    return-void
.end method

.method public setPreserveLastModified(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 183
    invoke-static {p1}, Lorg/apache/tools/ant/Project;->toBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Copy;->setPreserveLastModified(Z)V

    return-void
.end method

.method public setPreserveLastModified(Z)V
    .locals 0

    .line 191
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Copy;->preserveLastModified:Z

    return-void
.end method

.method public setQuiet(Z)V
    .locals 0

    .line 302
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Copy;->quiet:Z

    return-void
.end method

.method public setTodir(Ljava/io/File;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Copy;->destDir:Ljava/io/File;

    return-void
.end method

.method public setTofile(Ljava/io/File;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Copy;->destFile:Ljava/io/File;

    return-void
.end method

.method public setVerbose(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    .line 282
    :goto_0
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/Copy;->verbosity:I

    return-void
.end method

.method protected supportsNonFileResources()Z
    .locals 2

    .line 1007
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/apache/tools/ant/taskdefs/Copy;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected validateAttributes()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 677
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->file:Ljava/io/File;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->rcs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 678
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Specify at least one source--a file or a resource collection."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 681
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->destFile:Ljava/io/File;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Copy;->destDir:Ljava/io/File;

    if-nez v1, :cond_2

    goto :goto_1

    .line 682
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Only one of tofile and todir may be set."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    .line 685
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->destDir:Ljava/io/File;

    if-eqz v0, :cond_4

    goto :goto_2

    .line 686
    :cond_4
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "One of tofile or todir must be set."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 688
    :cond_5
    :goto_2
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->file:Ljava/io/File;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_3

    .line 689
    :cond_6
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Use a resource collection to copy directories."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 691
    :cond_7
    :goto_3
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->destFile:Ljava/io/File;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->rcs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 692
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->rcs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "Cannot concatenate multiple files into a single file."

    if-gt v0, v1, :cond_e

    .line 696
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->rcs:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/ResourceCollection;

    .line 697
    invoke-interface {v0}, Lorg/apache/tools/ant/types/ResourceCollection;->isFilesystemOnly()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Copy;->supportsNonFileResources()Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_4

    .line 698
    :cond_8
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Only FileSystem resources are supported."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 701
    :cond_9
    :goto_4
    invoke-interface {v0}, Lorg/apache/tools/ant/types/ResourceCollection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_d

    .line 704
    invoke-interface {v0}, Lorg/apache/tools/ant/types/ResourceCollection;->size()I

    move-result v4

    if-ne v4, v1, :cond_c

    .line 705
    invoke-interface {v0}, Lorg/apache/tools/ant/types/ResourceCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Resource;

    .line 706
    const-class v1, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/resources/FileProvider;

    .line 707
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Copy;->file:Ljava/io/File;

    if-nez v4, :cond_b

    if-eqz v1, :cond_a

    .line 709
    invoke-interface {v1}, Lorg/apache/tools/ant/types/resources/FileProvider;->getFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->file:Ljava/io/File;

    goto :goto_5

    .line 711
    :cond_a
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->singleResource:Lorg/apache/tools/ant/types/Resource;

    .line 713
    :goto_5
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->rcs:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_6

    .line 715
    :cond_b
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 719
    :cond_c
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 702
    :cond_d
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Cannot perform operation from directory to file."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 693
    :cond_e
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 723
    :cond_f
    :goto_6
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->destFile:Ljava/io/File;

    if-eqz v0, :cond_10

    .line 724
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Copy;->destDir:Ljava/io/File;

    :cond_10
    return-void
.end method
