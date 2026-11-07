.class public Lorg/apache/tools/ant/taskdefs/Local;
.super Lorg/apache/tools/ant/Task;
.source "Local.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/Local$Name;
    }
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private final nameElements:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/tools/ant/taskdefs/Local$Name;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 61
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Local;->nameElements:Ljava/util/Set;

    return-void
.end method

.method static synthetic lambda$execute$0(Lorg/apache/tools/ant/property/LocalProperties;Lorg/apache/tools/ant/taskdefs/Local$Name;)V
    .locals 0

    .line 94
    invoke-virtual {p1, p0}, Lorg/apache/tools/ant/taskdefs/Local$Name;->accept(Lorg/apache/tools/ant/property/LocalProperties;)V

    return-void
.end method


# virtual methods
.method public createName()Lorg/apache/tools/ant/taskdefs/Local$Name;
    .locals 2

    .line 77
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Local$Name;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/Local$Name;-><init>()V

    .line 78
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Local;->nameElements:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public execute()V
    .locals 3

    .line 86
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Local;->name:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Local;->nameElements:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Found no configured local property names"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Local;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/property/LocalProperties;->get(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/property/LocalProperties;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Local;->name:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 92
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/property/LocalProperties;->addLocal(Ljava/lang/String;)V

    .line 94
    :cond_2
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Local;->nameElements:Ljava/util/Set;

    new-instance v2, Lorg/apache/tools/ant/taskdefs/Local$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lorg/apache/tools/ant/taskdefs/Local$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/property/LocalProperties;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Local;->name:Ljava/lang/String;

    return-void
.end method
