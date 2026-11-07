.class public Lorg/apache/tools/ant/taskdefs/optional/Javah;
.super Lorg/apache/tools/ant/Task;
.source "Javah.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/optional/Javah$ClassArgument;,
        Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;
    }
.end annotation


# instance fields
.field private bootclasspath:Lorg/apache/tools/ant/types/Path;

.field private classes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/taskdefs/optional/Javah$ClassArgument;",
            ">;"
        }
    .end annotation
.end field

.field private classpath:Lorg/apache/tools/ant/types/Path;

.field private cls:Ljava/lang/String;

.field private destDir:Ljava/io/File;

.field private facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

.field private files:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lorg/apache/tools/ant/types/FileSet;",
            ">;"
        }
    .end annotation
.end field

.field private force:Z

.field private nestedAdapter:Lorg/apache/tools/ant/taskdefs/optional/javah/JavahAdapter;

.field private old:Z

.field private outputFile:Ljava/io/File;

.field private stubs:Z

.field private verbose:Z


# direct methods
.method public static synthetic $r8$lambda$FXI71IL-u7K3v79N2wK7KCwB1D4([Ljava/lang/Object;)Ljava/util/stream/Stream;
    .locals 0

    invoke-static {p0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$U_QlcWB8Xuvutp-FPuoHlo0M96U(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 90
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 73
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->classes:Ljava/util/List;

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 77
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->outputFile:Ljava/io/File;

    const/4 v1, 0x0

    .line 78
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->verbose:Z

    .line 79
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->force:Z

    .line 80
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->old:Z

    .line 81
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->stubs:Z

    .line 83
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    .line 84
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->files:Ljava/util/Vector;

    .line 85
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->nestedAdapter:Lorg/apache/tools/ant/taskdefs/optional/javah/JavahAdapter;

    .line 91
    new-instance v0, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    invoke-static {}, Lorg/apache/tools/ant/taskdefs/optional/javah/JavahAdapterFactory;->getDefault()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    return-void
.end method

.method static synthetic lambda$getClasses$1(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x5c

    const/16 v1, 0x2e

    .line 154
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\.class$"

    const-string v1, ""

    .line 155
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getClasses$2(I)[Ljava/lang/String;
    .locals 0

    .line 163
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/taskdefs/optional/javah/JavahAdapter;)V
    .locals 1

    .line 409
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->nestedAdapter:Lorg/apache/tools/ant/taskdefs/optional/javah/JavahAdapter;

    if-nez v0, :cond_0

    .line 412
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->nestedAdapter:Lorg/apache/tools/ant/taskdefs/optional/javah/JavahAdapter;

    return-void

    .line 410
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "Can\'t have more than one javah adapter"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addFileSet(Lorg/apache/tools/ant/types/FileSet;)V
    .locals 1

    .line 141
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->files:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public createArg()Lorg/apache/tools/ant/util/facade/ImplementationSpecificArgument;
    .locals 2

    .line 376
    new-instance v0, Lorg/apache/tools/ant/util/facade/ImplementationSpecificArgument;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/facade/ImplementationSpecificArgument;-><init>()V

    .line 377
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->addImplementationArgument(Lorg/apache/tools/ant/util/facade/ImplementationSpecificArgument;)V

    return-object v0
.end method

.method public createBootclasspath()Lorg/apache/tools/ant/types/Path;
    .locals 2

    .line 242
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->bootclasspath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 243
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Javah;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->bootclasspath:Lorg/apache/tools/ant/types/Path;

    .line 245
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->bootclasspath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public createClass()Lorg/apache/tools/ant/taskdefs/optional/Javah$ClassArgument;
    .locals 2

    .line 107
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/Javah$ClassArgument;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/optional/Javah$ClassArgument;-><init>(Lorg/apache/tools/ant/taskdefs/optional/Javah;)V

    .line 108
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->classes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public createClasspath()Lorg/apache/tools/ant/types/Path;
    .locals 2

    .line 201
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 202
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Javah;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 204
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->classpath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public createImplementationClasspath()Lorg/apache/tools/ant/types/Path;
    .locals 2

    .line 399
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Javah;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->getImplementationClasspath(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public execute()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 423
    const-class v0, Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 425
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->cls:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 426
    sget-object v1, Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;->cls:Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 428
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->classes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 429
    sget-object v1, Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;->classes:Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 431
    :cond_1
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->files:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 432
    sget-object v1, Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;->files:Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 434
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_9

    .line 439
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->destDir:Ljava/io/File;

    if-eqz v0, :cond_5

    .line 440
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 444
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->outputFile:Ljava/io/File;

    if-nez v0, :cond_3

    goto :goto_0

    .line 445
    :cond_3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "destdir and outputFile are mutually exclusive"

    .line 446
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Javah;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 441
    :cond_4
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "destination directory \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->destDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" does not exist or is not a directory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 442
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Javah;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 450
    :cond_5
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_6

    .line 451
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Javah;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    const-string v1, "last"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Path;->concatSystemClasspath(Ljava/lang/String;)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->classpath:Lorg/apache/tools/ant/types/Path;

    goto :goto_1

    :cond_6
    const-string v1, "ignore"

    .line 453
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Path;->concatSystemClasspath(Ljava/lang/String;)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 456
    :goto_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->nestedAdapter:Lorg/apache/tools/ant/taskdefs/optional/javah/JavahAdapter;

    if-eqz v0, :cond_7

    goto :goto_2

    .line 457
    :cond_7
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->getImplementation()Ljava/lang/String;

    move-result-object v0

    .line 458
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Javah;->createImplementationClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v1

    .line 457
    invoke-static {v0, p0, v1}, Lorg/apache/tools/ant/taskdefs/optional/javah/JavahAdapterFactory;->getAdapter(Ljava/lang/String;Lorg/apache/tools/ant/ProjectComponent;Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/taskdefs/optional/javah/JavahAdapter;

    move-result-object v0

    .line 459
    :goto_2
    invoke-interface {v0, p0}, Lorg/apache/tools/ant/taskdefs/optional/javah/JavahAdapter;->compile(Lorg/apache/tools/ant/taskdefs/optional/Javah;)Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 460
    :cond_8
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "compilation failed"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 435
    :cond_9
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exactly one of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;->values()[Lorg/apache/tools/ant/taskdefs/optional/Javah$Settings;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " attributes is required"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 436
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Javah;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method public getBootclasspath()Lorg/apache/tools/ant/types/Path;
    .locals 1

    .line 263
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->bootclasspath:Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method public getClasses()[Ljava/lang/String;
    .locals 3

    .line 150
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->files:Ljava/util/Vector;

    .line 151
    invoke-virtual {v0}, Ljava/util/Vector;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/taskdefs/optional/Javah$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/taskdefs/optional/Javah$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/taskdefs/optional/Javah;)V

    .line 152
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/taskdefs/optional/Javah$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/optional/Javah$$ExternalSyntheticLambda1;-><init>()V

    .line 153
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/taskdefs/optional/Javah$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/optional/Javah$$ExternalSyntheticLambda2;-><init>()V

    .line 154
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->classes:Ljava/util/List;

    .line 156
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/apache/tools/ant/taskdefs/optional/Javah$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lorg/apache/tools/ant/taskdefs/optional/Javah$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 150
    invoke-static {v0, v1}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 158
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->cls:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, ","

    .line 159
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/apache/tools/ant/taskdefs/optional/Javah$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lorg/apache/tools/ant/taskdefs/optional/Javah$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 163
    :cond_0
    new-instance v1, Lorg/apache/tools/ant/taskdefs/optional/Javah$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/optional/Javah$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getClasspath()Lorg/apache/tools/ant/types/Path;
    .locals 1

    .line 222
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->classpath:Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method public getCurrentArgs()[Ljava/lang/String;
    .locals 1

    .line 388
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->getArgs()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDestdir()Ljava/io/File;
    .locals 1

    .line 181
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->destDir:Ljava/io/File;

    return-object v0
.end method

.method public getForce()Z
    .locals 1

    .line 298
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->force:Z

    return v0
.end method

.method public getOld()Z
    .locals 1

    .line 318
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->old:Z

    return v0
.end method

.method public getOutputfile()Ljava/io/File;
    .locals 1

    .line 281
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->outputFile:Ljava/io/File;

    return-object v0
.end method

.method public getStubs()Z
    .locals 1

    .line 335
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->stubs:Z

    return v0
.end method

.method public getVerbose()Z
    .locals 1

    .line 353
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->verbose:Z

    return v0
.end method

.method synthetic lambda$getClasses$0$org-apache-tools-ant-taskdefs-optional-Javah(Lorg/apache/tools/ant/types/FileSet;)[Ljava/lang/String;
    .locals 1

    .line 152
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Javah;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/FileSet;->getDirectoryScanner(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public logAndAddFiles(Lorg/apache/tools/ant/types/Commandline;)V
    .locals 0

    .line 470
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/Javah;->logAndAddFilesToCompile(Lorg/apache/tools/ant/types/Commandline;)V

    return-void
.end method

.method protected logAndAddFilesToCompile(Lorg/apache/tools/ant/types/Commandline;)V
    .locals 7

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Compilation "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->describeArguments()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/Javah;->log(Ljava/lang/String;I)V

    .line 482
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Javah;->getClasses()[Ljava/lang/String;

    move-result-object v0

    .line 483
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Class"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 484
    array-length v3, v0

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    const-string v3, "es"

    .line 485
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v3, " to be compiled:%n"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    .line 487
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    array-length v3, v0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    .line 489
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    const-string v6, "    %s%n"

    .line 490
    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 492
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lorg/apache/tools/ant/taskdefs/optional/Javah;->log(Ljava/lang/String;I)V

    return-void
.end method

.method public setBootClasspathRef(Lorg/apache/tools/ant/types/Reference;)V
    .locals 1

    .line 254
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Javah;->createBootclasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    return-void
.end method

.method public setBootclasspath(Lorg/apache/tools/ant/types/Path;)V
    .locals 1

    .line 230
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->bootclasspath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 231
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->bootclasspath:Lorg/apache/tools/ant/types/Path;

    goto :goto_0

    .line 233
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    :goto_0
    return-void
.end method

.method public setClass(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->cls:Ljava/lang/String;

    return-void
.end method

.method public setClasspath(Lorg/apache/tools/ant/types/Path;)V
    .locals 1

    .line 189
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 190
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->classpath:Lorg/apache/tools/ant/types/Path;

    goto :goto_0

    .line 192
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    :goto_0
    return-void
.end method

.method public setClasspathRef(Lorg/apache/tools/ant/types/Reference;)V
    .locals 1

    .line 213
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Javah;->createClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    return-void
.end method

.method public setDestdir(Ljava/io/File;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->destDir:Ljava/io/File;

    return-void
.end method

.method public setForce(Z)V
    .locals 0

    .line 289
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->force:Z

    return-void
.end method

.method public setImplementation(Ljava/lang/String;)V
    .locals 1

    const-string v0, "default"

    .line 362
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    invoke-static {}, Lorg/apache/tools/ant/taskdefs/optional/javah/JavahAdapterFactory;->getDefault()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->setImplementation(Ljava/lang/String;)V

    goto :goto_0

    .line 365
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->setImplementation(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setOld(Z)V
    .locals 0

    .line 309
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->old:Z

    return-void
.end method

.method public setOutputFile(Ljava/io/File;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->outputFile:Ljava/io/File;

    return-void
.end method

.method public setStubs(Z)V
    .locals 0

    .line 326
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->stubs:Z

    return-void
.end method

.method public setVerbose(Z)V
    .locals 0

    .line 344
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Javah;->verbose:Z

    return-void
.end method
