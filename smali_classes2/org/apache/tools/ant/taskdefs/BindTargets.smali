.class public Lorg/apache/tools/ant/taskdefs/BindTargets;
.super Lorg/apache/tools/ant/Task;
.source "BindTargets.java"


# instance fields
.field private extensionPoint:Ljava/lang/String;

.field private onMissingExtensionPoint:Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;

.field private final targets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$U_QlcWB8Xuvutp-FPuoHlo0M96U(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/BindTargets;->targets:Ljava/util/List;

    return-void
.end method

.method static synthetic lambda$setTargets$0(Ljava/lang/String;)Z
    .locals 0

    .line 58
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public execute()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/BindTargets;->extensionPoint:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 68
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/BindTargets;->getOwningTarget()Lorg/apache/tools/ant/Target;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 69
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/BindTargets;->getOwningTarget()Lorg/apache/tools/ant/Target;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Target;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/BindTargets;->onMissingExtensionPoint:Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;

    if-nez v0, :cond_0

    .line 74
    sget-object v0, Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;->FAIL:Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/BindTargets;->onMissingExtensionPoint:Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;

    .line 76
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/BindTargets;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    const-string v1, "ant.projectHelper"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->getReference(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/ProjectHelper;

    .line 78
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/BindTargets;->targets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 79
    invoke-virtual {v0}, Lorg/apache/tools/ant/ProjectHelper;->getExtensionStack()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/BindTargets;->extensionPoint:Ljava/lang/String;

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/BindTargets;->onMissingExtensionPoint:Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;

    .line 80
    invoke-virtual {v5}, Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;->name()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v4, v2, v5}, [Ljava/lang/String;

    move-result-object v2

    .line 79
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void

    .line 70
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "bindtargets only allowed as a top-level task"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "extensionPoint required"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/BindTargets;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method public setExtensionPoint(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/BindTargets;->extensionPoint:Ljava/lang/String;

    return-void
.end method

.method public setOnMissingExtensionPoint(Ljava/lang/String;)V
    .locals 3

    .line 47
    :try_start_0
    invoke-static {p1}, Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;->valueOf(Ljava/lang/String;)Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/BindTargets;->onMissingExtensionPoint:Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 49
    :catch_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid onMissingExtensionPoint: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnMissingExtensionPoint(Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/BindTargets;->onMissingExtensionPoint:Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;

    return-void
.end method

.method public setTargets(Ljava/lang/String;)V
    .locals 2

    const-string v0, ","

    .line 58
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/apache/tools/ant/taskdefs/BindTargets$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/BindTargets$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/apache/tools/ant/taskdefs/BindTargets$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/BindTargets$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/BindTargets;->targets:Ljava/util/List;

    .line 59
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/BindTargets$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/taskdefs/BindTargets$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
