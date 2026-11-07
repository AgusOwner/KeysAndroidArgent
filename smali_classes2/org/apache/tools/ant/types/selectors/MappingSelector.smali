.class public abstract Lorg/apache/tools/ant/types/selectors/MappingSelector;
.super Lorg/apache/tools/ant/types/selectors/BaseSelector;
.source "MappingSelector.java"


# static fields
.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;


# instance fields
.field protected granularity:I

.field protected map:Lorg/apache/tools/ant/util/FileNameMapper;

.field protected mapperElement:Lorg/apache/tools/ant/types/Mapper;

.field protected targetdir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/types/selectors/MappingSelector;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Lorg/apache/tools/ant/types/selectors/BaseSelector;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/MappingSelector;->targetdir:Ljava/io/File;

    .line 41
    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/MappingSelector;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    .line 42
    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/MappingSelector;->map:Lorg/apache/tools/ant/util/FileNameMapper;

    .line 43
    sget-object v0, Lorg/apache/tools/ant/types/selectors/MappingSelector;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/FileUtils;->getFileTimestampGranularity()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lorg/apache/tools/ant/types/selectors/MappingSelector;->granularity:I

    return-void
.end method


# virtual methods
.method public addConfigured(Lorg/apache/tools/ant/util/FileNameMapper;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/MappingSelector;->map:Lorg/apache/tools/ant/util/FileNameMapper;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/MappingSelector;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    if-nez v0, :cond_0

    .line 80
    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/MappingSelector;->map:Lorg/apache/tools/ant/util/FileNameMapper;

    return-void

    .line 78
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "Cannot define more than one mapper"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createMapper()Lorg/apache/tools/ant/types/Mapper;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/MappingSelector;->map:Lorg/apache/tools/ant/util/FileNameMapper;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/MappingSelector;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lorg/apache/tools/ant/types/Mapper;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/MappingSelector;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Mapper;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/MappingSelector;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    return-object v0

    .line 64
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Cannot define more than one mapper"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isSelected(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)Z
    .locals 3

    .line 117
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/MappingSelector;->validate()V

    .line 120
    iget-object p1, p0, Lorg/apache/tools/ant/types/selectors/MappingSelector;->map:Lorg/apache/tools/ant/util/FileNameMapper;

    invoke-interface {p1, p2}, Lorg/apache/tools/ant/util/FileNameMapper;->mapFileName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 127
    :cond_0
    array-length v1, p1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    aget-object p1, p1, v0

    if-eqz p1, :cond_1

    .line 132
    sget-object p2, Lorg/apache/tools/ant/types/selectors/MappingSelector;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/MappingSelector;->targetdir:Ljava/io/File;

    invoke-virtual {p2, v0, p1}, Lorg/apache/tools/ant/util/FileUtils;->resolveFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 134
    invoke-virtual {p0, p3, p1}, Lorg/apache/tools/ant/types/selectors/MappingSelector;->selectionTest(Ljava/io/File;Ljava/io/File;)Z

    move-result p1

    return p1

    .line 128
    :cond_1
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Invalid destination file results for "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/MappingSelector;->targetdir:Ljava/io/File;

    .line 129
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " with filename "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected abstract selectionTest(Ljava/io/File;Ljava/io/File;)Z
.end method

.method public setGranularity(I)V
    .locals 0

    .line 152
    iput p1, p0, Lorg/apache/tools/ant/types/selectors/MappingSelector;->granularity:I

    return-void
.end method

.method public setTargetdir(Ljava/io/File;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/MappingSelector;->targetdir:Ljava/io/File;

    return-void
.end method

.method public verifySettings()V
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/MappingSelector;->targetdir:Ljava/io/File;

    if-nez v0, :cond_0

    const-string v0, "The targetdir attribute is required."

    .line 90
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/MappingSelector;->setError(Ljava/lang/String;)V

    .line 92
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/MappingSelector;->map:Lorg/apache/tools/ant/util/FileNameMapper;

    if-nez v0, :cond_2

    .line 93
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/MappingSelector;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    if-nez v0, :cond_1

    .line 94
    new-instance v0, Lorg/apache/tools/ant/util/IdentityMapper;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/IdentityMapper;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/MappingSelector;->map:Lorg/apache/tools/ant/util/FileNameMapper;

    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Mapper;->getImplementation()Lorg/apache/tools/ant/util/FileNameMapper;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/MappingSelector;->map:Lorg/apache/tools/ant/util/FileNameMapper;

    if-nez v0, :cond_2

    const-string v0, "Could not set <mapper> element."

    .line 98
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/MappingSelector;->setError(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
