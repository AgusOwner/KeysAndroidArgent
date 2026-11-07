.class public Lorg/apache/tools/ant/types/selectors/DifferentSelector;
.super Lorg/apache/tools/ant/types/selectors/MappingSelector;
.source "DifferentSelector.java"


# static fields
.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;


# instance fields
.field private ignoreContents:Z

.field private ignoreFileTimes:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/types/selectors/DifferentSelector;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lorg/apache/tools/ant/types/selectors/MappingSelector;-><init>()V

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/selectors/DifferentSelector;->ignoreFileTimes:Z

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/selectors/DifferentSelector;->ignoreContents:Z

    return-void
.end method


# virtual methods
.method protected selectionTest(Ljava/io/File;Ljava/io/File;)Z
    .locals 9

    .line 84
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    return v2

    .line 88
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v0, v0, v3

    if-eqz v0, :cond_1

    return v2

    .line 93
    :cond_1
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/selectors/DifferentSelector;->ignoreFileTimes:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 96
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    iget v0, p0, Lorg/apache/tools/ant/types/selectors/DifferentSelector;->granularity:I

    int-to-long v7, v0

    sub-long/2addr v5, v7

    cmp-long v0, v3, v5

    if-ltz v0, :cond_2

    .line 97
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    iget v0, p0, Lorg/apache/tools/ant/types/selectors/DifferentSelector;->granularity:I

    int-to-long v7, v0

    add-long/2addr v5, v7

    cmp-long v0, v3, v5

    if-gtz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    if-nez v0, :cond_3

    return v2

    .line 104
    :cond_3
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/selectors/DifferentSelector;->ignoreContents:Z

    if-eqz v0, :cond_4

    return v1

    .line 109
    :cond_4
    :try_start_0
    sget-object v0, Lorg/apache/tools/ant/types/selectors/DifferentSelector;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/util/FileUtils;->contentEquals(Ljava/io/File;Ljava/io/File;)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p1, v2

    return p1

    :catch_0
    move-exception v0

    .line 111
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "while comparing "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " and "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setIgnoreContents(Z)V
    .locals 0

    .line 72
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/selectors/DifferentSelector;->ignoreContents:Z

    return-void
.end method

.method public setIgnoreFileTimes(Z)V
    .locals 0

    .line 63
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/selectors/DifferentSelector;->ignoreFileTimes:Z

    return-void
.end method
