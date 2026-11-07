.class public Lorg/apache/tools/ant/taskdefs/PathConvert;
.super Lorg/apache/tools/ant/Task;
.source "PathConvert.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/PathConvert$MapEntry;,
        Lorg/apache/tools/ant/taskdefs/PathConvert$TargetOs;,
        Lorg/apache/tools/ant/taskdefs/PathConvert$Output;
    }
.end annotation


# static fields
.field private static onWindows:Z


# instance fields
.field private dest:Lorg/apache/tools/ant/types/Resource;

.field private dirSep:Ljava/lang/String;

.field private mapper:Lorg/apache/tools/ant/types/Mapper;

.field private path:Lorg/apache/tools/ant/types/resources/Resources;

.field private pathSep:Ljava/lang/String;

.field private prefixMap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/taskdefs/PathConvert$MapEntry;",
            ">;"
        }
    .end annotation
.end field

.field private preserveDuplicates:Z

.field private property:Ljava/lang/String;

.field private refid:Lorg/apache/tools/ant/types/Reference;

.field private setonempty:Z

.field private targetOS:Ljava/lang/String;

.field private targetWindows:Z


# direct methods
.method public static synthetic $r8$lambda$5tRu_WZ7A7kfUE1melJVfvZ4wws(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$FXI71IL-u7K3v79N2wK7KCwB1D4([Ljava/lang/Object;)Ljava/util/stream/Stream;
    .locals 0

    invoke-static {p0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_T4MFyGPNHmdjry2SkuC_67x5Bc(Lorg/apache/tools/ant/taskdefs/PathConvert;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/PathConvert;->mapElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$j-mDF0-Lp8zTkRvVZBmkLZsXjLM(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "dos"

    .line 85
    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/tools/ant/taskdefs/PathConvert;->onWindows:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->setonempty:Z

    .line 115
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->prefixMap:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 57
    sget-boolean v0, Lorg/apache/tools/ant/taskdefs/PathConvert;->onWindows:Z

    return v0
.end method

.method static synthetic access$100(Lorg/apache/tools/ant/taskdefs/PathConvert;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->setonempty:Z

    return p0
.end method

.method static synthetic access$200(Lorg/apache/tools/ant/taskdefs/PathConvert;)Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->property:Ljava/lang/String;

    return-object p0
.end method

.method private createOutput()Lorg/apache/tools/ant/taskdefs/PathConvert$Output;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/tools/ant/taskdefs/PathConvert$Output<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 418
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->dest:Lorg/apache/tools/ant/types/Resource;

    if-eqz v0, :cond_0

    .line 419
    new-instance v0, Lorg/apache/tools/ant/taskdefs/PathConvert$1;

    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->dest:Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Resource;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, p0, v1}, Lorg/apache/tools/ant/taskdefs/PathConvert$1;-><init>(Lorg/apache/tools/ant/taskdefs/PathConvert;Ljava/io/Writer;)V

    return-object v0

    .line 429
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->property:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 430
    new-instance v0, Lorg/apache/tools/ant/taskdefs/LogOutputStream;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/LogOutputStream;-><init>(Lorg/apache/tools/ant/ProjectComponent;)V

    goto :goto_0

    .line 432
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/taskdefs/PathConvert$2;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/PathConvert;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->property:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/PathConvert$2;-><init>(Lorg/apache/tools/ant/taskdefs/PathConvert;Lorg/apache/tools/ant/Project;Ljava/lang/String;)V

    .line 443
    :goto_0
    new-instance v1, Lorg/apache/tools/ant/taskdefs/PathConvert$3;

    invoke-direct {v1, p0, v0}, Lorg/apache/tools/ant/taskdefs/PathConvert$3;-><init>(Lorg/apache/tools/ant/taskdefs/PathConvert;Ljava/io/OutputStream;)V

    return-object v1
.end method

.method private declared-synchronized getPath()Lorg/apache/tools/ant/types/resources/Resources;
    .locals 2

    monitor-enter p0

    .line 231
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->path:Lorg/apache/tools/ant/types/resources/Resources;

    if-nez v0, :cond_0

    .line 232
    new-instance v0, Lorg/apache/tools/ant/types/resources/Resources;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/PathConvert;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/resources/Resources;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->path:Lorg/apache/tools/ant/types/resources/Resources;

    const/4 v1, 0x0

    .line 233
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/resources/Resources;->setCache(Z)V

    .line 235
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->path:Lorg/apache/tools/ant/types/resources/Resources;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic lambda$mapElement$1(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 0

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$mapElement$2(Ljava/lang/String;Lorg/apache/tools/ant/taskdefs/PathConvert$MapEntry;)Ljava/lang/String;
    .locals 0

    .line 485
    invoke-virtual {p1, p0}, Lorg/apache/tools/ant/taskdefs/PathConvert$MapEntry;->apply(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private mapElement(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 484
    new-instance v0, Lorg/apache/tools/ant/taskdefs/PathConvert$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/taskdefs/PathConvert$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 485
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->prefixMap:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/apache/tools/ant/taskdefs/PathConvert$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1}, Lorg/apache/tools/ant/taskdefs/PathConvert$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method private noChildrenAllowed()Lorg/apache/tools/ant/BuildException;
    .locals 2

    .line 551
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "You must not specify nested elements when using the refid attribute."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private streamResources()Ljava/util/stream/Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 453
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/PathConvert;->isPreserveDuplicates()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->path:Lorg/apache/tools/ant/types/resources/Resources;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->path:Lorg/apache/tools/ant/types/resources/Resources;

    invoke-static {v0}, Lorg/apache/tools/ant/types/resources/Union;->getInstance(Lorg/apache/tools/ant/types/ResourceCollection;)Lorg/apache/tools/ant/types/resources/Union;

    move-result-object v0

    .line 454
    :goto_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->mapper:Lorg/apache/tools/ant/types/Mapper;

    if-nez v1, :cond_1

    new-instance v1, Lorg/apache/tools/ant/util/IdentityMapper;

    invoke-direct {v1}, Lorg/apache/tools/ant/util/IdentityMapper;-><init>()V

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Mapper;->getImplementation()Lorg/apache/tools/ant/util/FileNameMapper;

    move-result-object v1

    .line 457
    :goto_1
    invoke-interface {v0}, Lorg/apache/tools/ant/types/ResourceCollection;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lorg/apache/tools/ant/taskdefs/PathConvert$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lorg/apache/tools/ant/taskdefs/PathConvert$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 458
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/apache/tools/ant/taskdefs/PathConvert$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1}, Lorg/apache/tools/ant/taskdefs/PathConvert$$ExternalSyntheticLambda4;-><init>(Lorg/apache/tools/ant/util/FileNameMapper;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/taskdefs/PathConvert$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/PathConvert$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/taskdefs/PathConvert$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/PathConvert$$ExternalSyntheticLambda6;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/taskdefs/PathConvert$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/taskdefs/PathConvert$$ExternalSyntheticLambda7;-><init>(Lorg/apache/tools/ant/taskdefs/PathConvert;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 468
    sget-boolean v1, Lorg/apache/tools/ant/taskdefs/PathConvert;->onWindows:Z

    if-eqz v1, :cond_2

    const-string v1, "\\"

    goto :goto_2

    :cond_2
    const-string v1, "/"

    .line 469
    :goto_2
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->dirSep:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v0

    .line 472
    :cond_3
    new-instance v2, Lorg/apache/tools/ant/taskdefs/PathConvert$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, v1}, Lorg/apache/tools/ant/taskdefs/PathConvert$$ExternalSyntheticLambda8;-><init>(Lorg/apache/tools/ant/taskdefs/PathConvert;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method private validateSetup()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 518
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->path:Lorg/apache/tools/ant/types/resources/Resources;

    if-eqz v0, :cond_7

    .line 521
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->property:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->dest:Lorg/apache/tools/ant/types/Resource;

    if-nez v0, :cond_0

    goto :goto_0

    .line 522
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "@property and @dest are mutually exclusive"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 526
    :cond_1
    :goto_0
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 527
    sget-object v1, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    .line 529
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->targetOS:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 530
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->targetWindows:Z

    if-eqz v0, :cond_2

    const-string v1, ";"

    goto :goto_1

    :cond_2
    const-string v1, ":"

    :goto_1
    if-eqz v0, :cond_3

    const-string v0, "\\"

    goto :goto_2

    :cond_3
    const-string v0, "/"

    .line 533
    :cond_4
    :goto_2
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->pathSep:Ljava/lang/String;

    if-eqz v2, :cond_5

    move-object v1, v2

    .line 537
    :cond_5
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->dirSep:Ljava/lang/String;

    if-eqz v2, :cond_6

    move-object v0, v2

    .line 541
    :cond_6
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->pathSep:Ljava/lang/String;

    .line 542
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->dirSep:Ljava/lang/String;

    return-void

    .line 519
    :cond_7
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "You must specify a path to convert"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .locals 1

    .line 224
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/PathConvert;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/PathConvert;->getPath()Lorg/apache/tools/ant/types/resources/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/resources/Resources;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    return-void

    .line 225
    :cond_0
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/PathConvert;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public add(Lorg/apache/tools/ant/util/FileNameMapper;)V
    .locals 2

    .line 507
    new-instance v0, Lorg/apache/tools/ant/types/Mapper;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/PathConvert;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Mapper;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 508
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Mapper;->add(Lorg/apache/tools/ant/util/FileNameMapper;)V

    .line 509
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/PathConvert;->addMapper(Lorg/apache/tools/ant/types/Mapper;)V

    return-void
.end method

.method public addMapper(Lorg/apache/tools/ant/types/Mapper;)V
    .locals 1

    .line 494
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->mapper:Lorg/apache/tools/ant/types/Mapper;

    if-nez v0, :cond_0

    .line 498
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->mapper:Lorg/apache/tools/ant/types/Mapper;

    return-void

    .line 495
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "Cannot define more than one mapper"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createMap()Lorg/apache/tools/ant/taskdefs/PathConvert$MapEntry;
    .locals 2

    .line 243
    new-instance v0, Lorg/apache/tools/ant/taskdefs/PathConvert$MapEntry;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/PathConvert$MapEntry;-><init>(Lorg/apache/tools/ant/taskdefs/PathConvert;)V

    .line 244
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->prefixMap:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public createPath()Lorg/apache/tools/ant/types/Path;
    .locals 2

    .line 210
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/PathConvert;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/PathConvert;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 214
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/PathConvert;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    return-object v0

    .line 211
    :cond_0
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/PathConvert;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public execute()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 379
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->path:Lorg/apache/tools/ant/types/resources/Resources;

    .line 380
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->pathSep:Ljava/lang/String;

    .line 381
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->dirSep:Ljava/lang/String;

    .line 385
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/PathConvert;->isReference()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    .line 386
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->refid:Lorg/apache/tools/ant/types/Reference;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/PathConvert;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/apache/tools/ant/types/Reference;->getReferencedObject(Lorg/apache/tools/ant/Project;)Ljava/lang/Object;

    move-result-object v3

    .line 387
    instance-of v6, v3, Lorg/apache/tools/ant/types/ResourceCollection;

    if-eqz v6, :cond_0

    .line 392
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/PathConvert;->getPath()Lorg/apache/tools/ant/types/resources/Resources;

    move-result-object v6

    check-cast v3, Lorg/apache/tools/ant/types/ResourceCollection;

    invoke-virtual {v6, v3}, Lorg/apache/tools/ant/types/resources/Resources;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    goto :goto_0

    .line 388
    :cond_0
    new-instance v3, Lorg/apache/tools/ant/BuildException;

    const-string v6, "refid \'%s\' does not refer to a resource collection."

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->refid:Lorg/apache/tools/ant/types/Reference;

    .line 390
    invoke-virtual {v7}, Lorg/apache/tools/ant/types/Reference;->getRefId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v4

    invoke-direct {v3, v6, v5}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    .line 394
    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/PathConvert;->validateSetup()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 397
    :try_start_1
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/PathConvert;->createOutput()Lorg/apache/tools/ant/taskdefs/PathConvert$Output;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 398
    :try_start_2
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/PathConvert;->streamResources()Ljava/util/stream/Stream;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lorg/apache/tools/ant/taskdefs/PathConvert$$ExternalSyntheticLambda2;

    invoke-direct {v7, v6}, Lorg/apache/tools/ant/taskdefs/PathConvert$$ExternalSyntheticLambda2;-><init>(Ljava/util/stream/Stream;)V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v5, :cond_2

    move v5, v4

    goto :goto_2

    .line 402
    :cond_2
    iget-object v8, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->pathSep:Ljava/lang/String;

    invoke-virtual {v3, v8}, Lorg/apache/tools/ant/taskdefs/PathConvert$Output;->accept(Ljava/lang/String;)V

    .line 404
    :goto_2
    invoke-virtual {v3, v7}, Lorg/apache/tools/ant/taskdefs/PathConvert$Output;->accept(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_4

    .line 406
    :try_start_3
    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/PathConvert$Output;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 410
    :cond_4
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->path:Lorg/apache/tools/ant/types/resources/Resources;

    .line 411
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->dirSep:Ljava/lang/String;

    .line 412
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->pathSep:Ljava/lang/String;

    return-void

    :catchall_0
    move-exception v4

    if-eqz v3, :cond_5

    .line 397
    :try_start_4
    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/PathConvert$Output;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v3

    :try_start_5
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    throw v4
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catch_0
    move-exception v3

    .line 407
    :try_start_6
    new-instance v4, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v4, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v3

    .line 410
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->path:Lorg/apache/tools/ant/types/resources/Resources;

    .line 411
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->dirSep:Ljava/lang/String;

    .line 412
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->pathSep:Ljava/lang/String;

    .line 413
    throw v3
.end method

.method public isPreserveDuplicates()Z
    .locals 1

    .line 348
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->preserveDuplicates:Z

    return v0
.end method

.method public isReference()Z
    .locals 1

    .line 356
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->refid:Lorg/apache/tools/ant/types/Reference;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$streamResources$0$org-apache-tools-ant-taskdefs-PathConvert(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 472
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->dirSep:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setDest(Lorg/apache/tools/ant/types/Resource;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 366
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->dest:Lorg/apache/tools/ant/types/Resource;

    if-nez v0, :cond_0

    goto :goto_0

    .line 367
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "@dest already set"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 370
    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->dest:Lorg/apache/tools/ant/types/Resource;

    return-void
.end method

.method public setDirSep(Ljava/lang/String;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->dirSep:Ljava/lang/String;

    return-void
.end method

.method public setPathSep(Ljava/lang/String;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->pathSep:Ljava/lang/String;

    return-void
.end method

.method public setPreserveDuplicates(Z)V
    .locals 0

    .line 339
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->preserveDuplicates:Z

    return-void
.end method

.method public setProperty(Ljava/lang/String;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->property:Ljava/lang/String;

    return-void
.end method

.method public setRefid(Lorg/apache/tools/ant/types/Reference;)V
    .locals 1

    .line 309
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->path:Lorg/apache/tools/ant/types/resources/Resources;

    if-nez v0, :cond_0

    .line 312
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->refid:Lorg/apache/tools/ant/types/Reference;

    return-void

    .line 310
    :cond_0
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/PathConvert;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public setSetonempty(Z)V
    .locals 0

    .line 293
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->setonempty:Z

    return-void
.end method

.method public setTargetos(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 259
    new-instance v0, Lorg/apache/tools/ant/taskdefs/PathConvert$TargetOs;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/PathConvert$TargetOs;-><init>()V

    .line 260
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/PathConvert$TargetOs;->setValue(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/PathConvert;->setTargetos(Lorg/apache/tools/ant/taskdefs/PathConvert$TargetOs;)V

    return-void
.end method

.method public setTargetos(Lorg/apache/tools/ant/taskdefs/PathConvert$TargetOs;)V
    .locals 1

    .line 273
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/PathConvert$TargetOs;->getValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->targetOS:Ljava/lang/String;

    const-string v0, "unix"

    .line 282
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "tandem"

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->targetOS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/PathConvert;->targetWindows:Z

    return-void
.end method
