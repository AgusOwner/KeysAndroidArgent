.class public Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDefBase;
.super Lorg/apache/tools/ant/Task;
.source "ScriptDefBase.java"

# interfaces
.implements Lorg/apache/tools/ant/DynamicConfigurator;


# instance fields
.field private attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private nestedElementMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDefBase;->nestedElementMap:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDefBase;->attributes:Ljava/util/Map;

    return-void
.end method

.method private getScript()Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;
    .locals 4

    .line 56
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDefBase;->getTaskType()Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDefBase;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    const-string v2, "org.apache.ant.scriptrepo"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/Project;->getReference(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 63
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDefBase;->getTaskType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;

    if-eqz v1, :cond_0

    return-object v1

    .line 65
    :cond_0
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Script definition not found for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_1
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Script repository not found for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic lambda$createDynamicElement$0(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 79
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method


# virtual methods
.method public addText(Ljava/lang/String;)V
    .locals 1

    .line 109
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDefBase;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/Project;->replaceProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDefBase;->text:Ljava/lang/String;

    return-void
.end method

.method public createDynamicElement(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 78
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDefBase;->nestedElementMap:Ljava/util/Map;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDefBase$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDefBase$$ExternalSyntheticLambda0;-><init>()V

    .line 79
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 80
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDefBase;->getScript()Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->createNestedElement(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 81
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public execute()V
    .locals 3

    .line 52
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDefBase;->getScript()Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDefBase;->attributes:Ljava/util/Map;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDefBase;->nestedElementMap:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, p0}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->executeScript(Ljava/util/Map;Ljava/util/Map;Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDefBase;)V

    return-void
.end method

.method public fail(Ljava/lang/String;)V
    .locals 1

    .line 129
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDefBase;->text:Ljava/lang/String;

    return-object v0
.end method

.method public setDynamicAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 93
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDefBase;->getScript()Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;

    move-result-object v0

    .line 94
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->isAttributeSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDefBase;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 95
    :cond_0
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    .line 96
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDefBase;->getTaskType()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "<%s> does not support the \"%s\" attribute"

    invoke-direct {p2, v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2
.end method
