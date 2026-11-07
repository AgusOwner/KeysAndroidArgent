.class public Lorg/apache/tools/ant/util/SourceFileScanner;
.super Ljava/lang/Object;
.source "SourceFileScanner.java"

# interfaces
.implements Lorg/apache/tools/ant/types/ResourceFactory;


# static fields
.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;


# instance fields
.field private destDir:Ljava/io/File;

.field protected task:Lorg/apache/tools/ant/Task;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/util/SourceFileScanner;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/Task;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/apache/tools/ant/util/SourceFileScanner;->task:Lorg/apache/tools/ant/Task;

    return-void
.end method

.method static synthetic lambda$restrict$1(I)[Lorg/apache/tools/ant/types/Resource;
    .locals 0

    .line 100
    new-array p0, p0, [Lorg/apache/tools/ant/types/Resource;

    return-object p0
.end method

.method static synthetic lambda$restrict$2(I)[Ljava/lang/String;
    .locals 0

    .line 107
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method static synthetic lambda$restrictAsFiles$3(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 147
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$restrictAsFiles$4(I)[Ljava/io/File;
    .locals 0

    .line 147
    new-array p0, p0, [Ljava/io/File;

    return-object p0
.end method


# virtual methods
.method public getResource(Ljava/lang/String;)Lorg/apache/tools/ant/types/Resource;
    .locals 2

    .line 159
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResource;

    iget-object v1, p0, Lorg/apache/tools/ant/util/SourceFileScanner;->destDir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method synthetic lambda$restrict$0$org-apache-tools-ant-util-SourceFileScanner(Ljava/io/File;Ljava/lang/String;)Lorg/apache/tools/ant/util/SourceFileScanner$1;
    .locals 1

    .line 95
    new-instance v0, Lorg/apache/tools/ant/util/SourceFileScanner$1;

    invoke-direct {v0, p0, p1, p2, p2}, Lorg/apache/tools/ant/util/SourceFileScanner$1;-><init>(Lorg/apache/tools/ant/util/SourceFileScanner;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public restrict([Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/apache/tools/ant/util/FileNameMapper;)[Ljava/lang/String;
    .locals 8

    .line 69
    sget-object v0, Lorg/apache/tools/ant/util/SourceFileScanner;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    .line 70
    invoke-virtual {v0}, Lorg/apache/tools/ant/util/FileUtils;->getFileTimestampGranularity()J

    move-result-wide v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 69
    invoke-virtual/range {v1 .. v7}, Lorg/apache/tools/ant/util/SourceFileScanner;->restrict([Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/apache/tools/ant/util/FileNameMapper;J)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public restrict([Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/apache/tools/ant/util/FileNameMapper;J)[Ljava/lang/String;
    .locals 6

    .line 92
    iput-object p3, p0, Lorg/apache/tools/ant/util/SourceFileScanner;->destDir:Ljava/io/File;

    .line 95
    invoke-static {p1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p3, Lorg/apache/tools/ant/util/SourceFileScanner$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p2}, Lorg/apache/tools/ant/util/SourceFileScanner$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/util/SourceFileScanner;Ljava/io/File;)V

    invoke-interface {p1, p3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lorg/apache/tools/ant/util/SourceFileScanner$$ExternalSyntheticLambda1;

    invoke-direct {p2}, Lorg/apache/tools/ant/util/SourceFileScanner$$ExternalSyntheticLambda1;-><init>()V

    .line 100
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, [Lorg/apache/tools/ant/types/Resource;

    .line 104
    iget-object v0, p0, Lorg/apache/tools/ant/util/SourceFileScanner;->task:Lorg/apache/tools/ant/Task;

    move-object v2, p4

    move-object v3, p0

    move-wide v4, p5

    .line 105
    invoke-static/range {v0 .. v5}, Lorg/apache/tools/ant/util/ResourceUtils;->selectOutOfDateSources(Lorg/apache/tools/ant/ProjectComponent;[Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/util/FileNameMapper;Lorg/apache/tools/ant/types/ResourceFactory;J)[Lorg/apache/tools/ant/types/Resource;

    move-result-object p1

    invoke-static {p1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lorg/apache/tools/ant/taskdefs/Sync$MyCopy$$ExternalSyntheticLambda0;-><init>()V

    .line 107
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lorg/apache/tools/ant/util/SourceFileScanner$$ExternalSyntheticLambda2;

    invoke-direct {p2}, Lorg/apache/tools/ant/util/SourceFileScanner$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method public restrictAsFiles([Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/apache/tools/ant/util/FileNameMapper;)[Ljava/io/File;
    .locals 8

    .line 124
    sget-object v0, Lorg/apache/tools/ant/util/SourceFileScanner;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    .line 125
    invoke-virtual {v0}, Lorg/apache/tools/ant/util/FileUtils;->getFileTimestampGranularity()J

    move-result-wide v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 124
    invoke-virtual/range {v1 .. v7}, Lorg/apache/tools/ant/util/SourceFileScanner;->restrictAsFiles([Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/apache/tools/ant/util/FileNameMapper;J)[Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public restrictAsFiles([Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/apache/tools/ant/util/FileNameMapper;J)[Ljava/io/File;
    .locals 0

    .line 146
    invoke-virtual/range {p0 .. p6}, Lorg/apache/tools/ant/util/SourceFileScanner;->restrict([Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/apache/tools/ant/util/FileNameMapper;J)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p3, Lorg/apache/tools/ant/util/SourceFileScanner$$ExternalSyntheticLambda3;

    invoke-direct {p3, p2}, Lorg/apache/tools/ant/util/SourceFileScanner$$ExternalSyntheticLambda3;-><init>(Ljava/io/File;)V

    .line 147
    invoke-interface {p1, p3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lorg/apache/tools/ant/util/SourceFileScanner$$ExternalSyntheticLambda4;

    invoke-direct {p2}, Lorg/apache/tools/ant/util/SourceFileScanner$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/io/File;

    return-object p1
.end method
