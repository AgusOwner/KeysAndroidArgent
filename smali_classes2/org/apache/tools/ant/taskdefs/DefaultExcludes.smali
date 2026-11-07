.class public Lorg/apache/tools/ant/taskdefs/DefaultExcludes;
.super Lorg/apache/tools/ant/Task;
.source "DefaultExcludes.java"


# instance fields
.field private add:Ljava/lang/String;

.field private defaultrequested:Z

.field private echo:Z

.field private logLevel:I

.field private remove:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    const-string v0, ""

    .line 37
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/DefaultExcludes;->add:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/DefaultExcludes;->remove:Ljava/lang/String;

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/DefaultExcludes;->defaultrequested:Z

    .line 40
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/DefaultExcludes;->echo:Z

    const/4 v0, 0x1

    .line 43
    iput v0, p0, Lorg/apache/tools/ant/taskdefs/DefaultExcludes;->logLevel:I

    return-void
.end method

.method static synthetic lambda$execute$0(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "  %s%n"

    .line 67
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public execute()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 52
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/DefaultExcludes;->defaultrequested:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/DefaultExcludes;->add:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/DefaultExcludes;->remove:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/DefaultExcludes;->echo:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "<defaultexcludes> task must set at least one attribute (echo=\"false\" doesn\'t count since that is the default"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/DefaultExcludes;->defaultrequested:Z

    if-eqz v0, :cond_2

    .line 57
    invoke-static {}, Lorg/apache/tools/ant/DirectoryScanner;->resetDefaultExcludes()V

    .line 59
    :cond_2
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/DefaultExcludes;->add:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 60
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/DefaultExcludes;->add:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/tools/ant/DirectoryScanner;->addDefaultExclude(Ljava/lang/String;)Z

    .line 62
    :cond_3
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/DefaultExcludes;->remove:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 63
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/DefaultExcludes;->remove:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/tools/ant/DirectoryScanner;->removeDefaultExclude(Ljava/lang/String;)Z

    .line 65
    :cond_4
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/DefaultExcludes;->echo:Z

    if-eqz v0, :cond_5

    .line 66
    invoke-static {}, Lorg/apache/tools/ant/DirectoryScanner;->getDefaultExcludes()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/taskdefs/DefaultExcludes$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/DefaultExcludes$$ExternalSyntheticLambda0;-><init>()V

    .line 67
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    const-string v1, "Current Default Excludes:%n"

    const-string v2, ""

    .line 68
    invoke-static {v2, v1, v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 69
    iget v1, p0, Lorg/apache/tools/ant/taskdefs/DefaultExcludes;->logLevel:I

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/DefaultExcludes;->log(Ljava/lang/String;I)V

    :cond_5
    return-void
.end method

.method public setAdd(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/DefaultExcludes;->add:Ljava/lang/String;

    return-void
.end method

.method public setDefault(Z)V
    .locals 0

    .line 79
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/DefaultExcludes;->defaultrequested:Z

    return-void
.end method

.method public setEcho(Z)V
    .locals 0

    .line 107
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/DefaultExcludes;->echo:Z

    return-void
.end method

.method public setRemove(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/DefaultExcludes;->remove:Ljava/lang/String;

    return-void
.end method
